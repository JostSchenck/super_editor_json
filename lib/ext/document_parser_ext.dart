import 'dart:convert';

import 'package:super_editor/super_editor.dart';
import 'package:super_editor_json/parser/document_parser.dart';
import 'package:super_editor_json/parser/json/document_json_parser.dart';

extension DocumentJson on Document {
  ///文档转为Json
  String? toJson({
    List<AbsDocumentSerialize> customSerializeParser = const [],
    AttributionSerializeBuilder? attributionSerializeBuilder,
  }) {
    var dynamicJson = documentSerialize(
      this,
      customNodeSerializeParser: customSerializeParser,
      customAttributionSerializeBuilder: attributionSerializeBuilder,
    );
    return jsonEncode(dynamicJson);
  }

  static Document fromJson(
    String json, {
    List<AbsDocumentSerialize> customSerializeParser = const [],
    AttributionDeserializeBuilder? attributionDeserializeBuilder,
  }) {
    return documentDeserialize(
      jsonDecode(json),
      customNodeSerializeParser: customSerializeParser,
      customAttributionDeserializeBuilder: attributionDeserializeBuilder,
    );
  }
}

extension DocumentNodeJson on DocumentNode {
  String? toJson({
    List<AbsDocumentSerialize> customSerializeParser = const [],
    AttributionSerializeBuilder? attributionSerializeBuilder,
  }) {
    var dynamicJson = documentNodeSerialize(
      this,
      customNodeSerializeParser: customSerializeParser,
      customAttributionSerializeBuilder: attributionSerializeBuilder,
    );
    return jsonEncode(dynamicJson);
  }

  static DocumentNode fromJson(
    String json, {
    List<AbsDocumentSerialize> customSerializeParser = const [],
    AttributionDeserializeBuilder? attributionDeserializeBuilder,
  }) {
    return documentNodeDeserialize(
      jsonDecode(json),
      customNodeSerializeParser: customSerializeParser,
      customAttributionDeserializeBuilder: attributionDeserializeBuilder,
    );
  }
}
