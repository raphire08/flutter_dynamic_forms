// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter_dynamic_forms_components/flutter_dynamic_forms_components.dart';
import 'package:dynamic_forms/dynamic_forms.dart';
import 'package:meta/meta.dart';

class MultiSelectGroup<TMultiSelectChoice extends MultiSelectChoice> extends FormElement {
  static const String choicesPropertyName = "choices";

  Property<List<TMultiSelectChoice>> get choicesProperty => properties[choicesPropertyName];
  set choicesProperty(Property<List<TMultiSelectChoice>> value) =>
      registerProperty(choicesPropertyName, value);
  List<TMultiSelectChoice> get choices =>
      choicesProperty.value;
  Stream<List<TMultiSelectChoice>> get choicesChanged => choicesProperty.valueChanged;

  @override
  FormElement getInstance() {
    return MultiSelectGroup();
  }
}
