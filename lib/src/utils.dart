import 'dart:io';

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/source/line_info.dart';
import 'package:analyzer/source/source.dart';
import 'package:path/path.dart' as p;

import 'package:collection/collection.dart';
import 'package:scip_dart/src/flags.dart';

/// Returns a list of all the pubspec.yaml paths under a directory.
/// Will recurse into child folders, will not follow links.
Future<List<String>> pubspecPathsFor(String rootDirectory) async {
  return Directory(rootDirectory)
      .list(recursive: true, followLinks: false)
      .where((file) => p.basename(file.path) == 'pubspec.yaml')
      .map((file) => file.path)
      .toList();
}

enum DisplayLevel { info, warn, error }

void display(String input, {DisplayLevel level = DisplayLevel.warn}) {
  if (!Flags.instance.verbose) return;

  if (level == DisplayLevel.error) {
    stderr.writeln('ERROR: $input');
  } else {
    print('WARN: $input');
  }
}

extension LineInfoExtension on LineInfo {
  List<int> getRange(int offset, int length) {
    final start = getLocation(offset);
    final end = getLocation(offset + length);

    final res = [
      start.lineNumber - 1,
      start.columnNumber - 1,
      end.lineNumber - 1,
      end.columnNumber - 1,
    ];

    // if the range starts and ends on the same line, only return
    // 3 elements, where the first is the line number, and the others
    // are startCol and endCol. This is apart of the scip spec
    if (res[0] == res[2]) {
      res.removeAt(2);
    }

    return res;
  }
}

extension ElementExtension on Element {
  /// The source file this element was declared in
  Source? get source => firstFragment.libraryFragment?.source;

  /// The offset of this element's name within its declaring file.
  ///
  /// For unnamed constructors, this is the offset of the type name
  int get nameOffset {
    final fragment = firstFragment;
    if (fragment.nameOffset != null) return fragment.nameOffset!;
    if (fragment is ConstructorFragment && fragment.typeNameOffset != null) {
      return fragment.typeNameOffset!;
    }
    return fragment.offset;
  }

  /// The length of this element's name within its declaring file.
  ///
  /// For unnamed constructors, this is the length of the type name
  int get nameLength {
    final fragment = firstFragment;
    if (fragment.nameOffset != null) return fragment.name?.length ?? 0;
    if (fragment is ConstructorFragment) return fragment.typeName?.length ?? 0;
    return 0;
  }
}

String? getYamlSection(
  String str,
  Pattern startRegex, {
  bool skipMatchedLine = false,
}) {
  final indentSize = getYamlIndentSize(str);

  final match = startRegex.allMatches(str).firstOrNull;
  if (match == null) return null;

  final startingCharacter = match.start;

  final sectionAndAfterLines = str.substring(startingCharacter).split('\n');
  final sectionKeyLine = sectionAndAfterLines[0];
  final sectionKeyIndentSize =
      sectionKeyLine.length - sectionKeyLine.trimLeft().length;

  final inSectionIndent = List.filled(
    sectionKeyIndentSize + indentSize,
    ' ',
  ).join();

  final inSectionLines = sectionAndAfterLines
      .skip(1) // skip the section key line
      .takeWhile(
        (line) => line.trim().isEmpty || line.startsWith(inSectionIndent),
      )
      .toList();

  return [
    if (!skipMatchedLine) sectionKeyLine,
    ...inSectionLines,
  ].where((line) => line.trim().isNotEmpty).join('\n');
}

int getYamlIndentSize(String str) {
  final lines = str.split('\n');

  for (var line in lines) {
    if (line.startsWith(' ')) {
      return line.length - line.trimLeft().length;
    }
  }

  return 0;
}
