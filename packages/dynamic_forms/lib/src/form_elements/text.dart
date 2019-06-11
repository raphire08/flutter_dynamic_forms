import 'package:dynamic_forms/dynamic_forms.dart';
import 'package:dynamic_forms/src/form_elements/form_element.dart';
import 'package:dynamic_forms/src/form_elements/validation.dart';
import 'package:expression_language/expression_language.dart';
import 'package:meta/meta.dart';

class Text extends FormElement {
  ElementValue<String> value;
  ElementValue<String> label;
  ElementValue<String> textInputType;
  ElementValue<List<Validation>> validations;

  void fillText({
    @required String id,
    @required ElementValue<ExpressionProviderElement> parent,
    @required ElementValue<bool> isVisible,
    @required ElementValue<String> value,
    @required ElementValue<String> label,
    @required ElementValue<String> textInputType,
    @required ElementValue<List<Validation>> validations,
  }) {
    fillFormElement(id: id, parent: parent, isVisible: isVisible);
    this.value = registerElementValue("value", value);
    this.label = registerElementValue("label", label);
    this.textInputType = registerElementValue("textInputType", textInputType);
    this.validations = registerElementValue("validations", validations);
  }
}
