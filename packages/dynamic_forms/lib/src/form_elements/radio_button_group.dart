import 'package:dynamic_forms/dynamic_forms.dart';
import 'package:dynamic_forms/src/form_elements/form_element.dart';
import 'package:dynamic_forms/src/form_elements/radio_button.dart';
import 'package:expression_language/expression_language.dart';
import 'package:meta/meta.dart';

class RadioButtonGroup extends FormElement {
  ElementValue<String> value;
  ElementValue<List<RadioButton>> children;

  void fillRadioButtonGroup({
    @required String id,
    @required ElementValue<ExpressionProviderElement> parent,
    @required ElementValue<bool> isVisible,
    @required ElementValue<List<RadioButton>> children,
    @required ElementValue<String> value,
  }) {
    fillFormElement(id: id, parent: parent, isVisible: isVisible);
    this.children = registerElementValue("children", children);
    this.value = registerElementValue("value", value);
  }
}
