import 'package:dart_dev/dart_dev.dart';
import 'package:glob/glob.dart';

final config = {
  ...coreConfig,
  'format': FormatTool()
<<<<<<< HEAD
    ..exclude = [
      Glob('snapshots/**'),
      Glob('lib/src/gen/*.dart'),
      Glob('test/**')
    ],
||||||| d1c3a82
    ..exclude = [
      Glob('snapshots/**'),
      Glob('lib/src/gen/*.dart'),
    ],
=======
    ..exclude = [Glob('snapshots/**'), Glob('lib/src/gen/*.dart')],
>>>>>>> master
};
