/// Entry point for the dart_jts library.
library dart_jts;

import 'dart:collection';
import 'dart:convert';
import 'dart:core';
import 'dart:typed_data';
import 'package:intl/intl.dart';
import 'dart:math' as math;
import 'package:collection/collection.dart' show ListEquality;

part 'src/com/hydrologis/dart_jts/io/io.dart';
part 'src/com/hydrologis/dart_jts/io/hex.dart';
part 'src/com/hydrologis/dart_jts/io/wkb.dart';
part 'src/com/hydrologis/dart_jts/geom/coordinate.dart';
part 'src/com/hydrologis/dart_jts/geom/envelope.dart';
part 'src/com/hydrologis/dart_jts/geom/geom.dart';
part 'src/com/hydrologis/dart_jts/geom/util.dart';
part 'src/com/hydrologis/dart_jts/algorithm/distance.dart';
part 'src/com/hydrologis/dart_jts/algorithm/convexthull.dart';
part 'src/com/hydrologis/dart_jts/algorithm/algorithm.dart';
part 'src/com/hydrologis/dart_jts/algorithm/locate.dart';
part 'src/com/hydrologis/dart_jts/algorithm/construct.dart';
part 'src/com/hydrologis/dart_jts/operation/operation.dart';
part 'src/com/hydrologis/dart_jts/operation/valid.dart';
part 'src/com/hydrologis/dart_jts/operation/relate.dart';
part 'src/com/hydrologis/dart_jts/operation/overlay.dart';
part 'src/com/hydrologis/dart_jts/operation/predicate.dart';
part 'src/com/hydrologis/dart_jts/operation/buffer.dart';
part 'src/com/hydrologis/dart_jts/operation/buffer_validate.dart';
part 'src/com/hydrologis/dart_jts/noding/noding.dart';
part 'src/com/hydrologis/dart_jts/math/math.dart';
part 'src/com/hydrologis/dart_jts/geomgraph/geomgraph.dart';
part 'src/com/hydrologis/dart_jts/geomgraph/index.dart';
part 'src/com/hydrologis/dart_jts/util.dart';
part 'src/com/hydrologis/dart_jts/geom/geometry.dart';
part 'src/com/hydrologis/dart_jts/geom/point.dart';
part 'src/com/hydrologis/dart_jts/geom/geometry_collection.dart';
part 'src/com/hydrologis/dart_jts/geom/multipoint.dart';
part 'src/com/hydrologis/dart_jts/geom/linestring.dart';
part 'src/com/hydrologis/dart_jts/geom/multilinestring.dart';
part 'src/com/hydrologis/dart_jts/geom/polygon.dart';
part 'src/com/hydrologis/dart_jts/geom/multipolygon.dart';
part 'src/com/hydrologis/dart_jts/util/geom_impl.dart';
part 'src/com/hydrologis/dart_jts/util/util.dart';
part 'src/com/hydrologis/dart_jts/index/index.dart';
part 'src/com/hydrologis/dart_jts/index/chain.dart';
part 'src/com/hydrologis/dart_jts/index/strtree.dart';
part 'src/com/hydrologis/dart_jts/index/quadtree.dart';
part 'src/com/hydrologis/dart_jts/util/avltree.dart';
part 'src/com/hydrologis/dart_jts/extra.dart';
part 'src/com/hydrologis/dart_jts/addons/geodesy.dart';
part 'src/com/hydrologis/dart_jts/geom/affinetransformation.dart';
part 'src/com/hydrologis/dart_jts/linearref/lengthindexedline.dart';
part 'src/com/hydrologis/dart_jts/linearref/linearlocation.dart';
part 'src/com/hydrologis/dart_jts/linearref/lengthlocationmap.dart';
part 'src/com/hydrologis/dart_jts/linearref/lineariterator.dart';
part 'src/com/hydrologis/dart_jts/linearref/extractlinebylocation.dart';
part 'src/com/hydrologis/dart_jts/linearref/lineargeometrybuilder.dart';
part 'src/com/hydrologis/dart_jts/linearref/lengthindexofpoint.dart';
part 'src/com/hydrologis/dart_jts/linearref/locationindexofline.dart';
part 'src/com/hydrologis/dart_jts/linearref/locationindexofpoint.dart';
part 'src/com/hydrologis/dart_jts/linearref/locationindexedline.dart';
part 'src/com/hydrologis/dart_jts/simplify/douglas_peucker_simplifier.dart';
part 'src/com/hydrologis/dart_jts/simplify/douglas_peucker_line_simplifier.dart';
part 'src/com/hydrologis/dart_jts/simplify/topology_preserving_simplifier.dart';
part 'src/com/hydrologis/dart_jts/simplify/tagged_line_string.dart';
part 'src/com/hydrologis/dart_jts/simplify/tagged_line_segment.dart';
part 'src/com/hydrologis/dart_jts/simplify/tagged_lines_simplifier.dart';
part 'src/com/hydrologis/dart_jts/simplify/line_segment_index.dart';
part 'src/com/hydrologis/dart_jts/simplify/tagged_line_string_simplifier.dart';
part 'src/com/hydrologis/dart_jts/simplify/vw_simplifier.dart';
part 'src/com/hydrologis/dart_jts/simplify/vw_line_simplifier.dart';
