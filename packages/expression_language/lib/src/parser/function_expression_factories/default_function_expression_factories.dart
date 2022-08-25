import 'package:expression_language/expression_language.dart';

import 'round_function_expression_factory.dart';

List<FunctionExpressionFactory> getDefaultFunctionExpressionFactories() {
  return [
    RoundFunctionExpressionFactory(),
    ExplicitFunctionExpressionFactory(
      name: 'length',
      parametersLength: 1,
      createFunctionExpression: (parameters) =>
          LengthFunctionExpression(parameters[0] as Expression<String>),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'tostring',
      parametersLength: 1,
      createFunctionExpression: (parameters) =>
          ToStringFunctionExpression(parameters[0]),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'isnull',
      parametersLength: 1,
      createFunctionExpression: (parameters) =>
          IsNullFunctionExpression(parameters[0]),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'isempty',
      parametersLength: 1,
      createFunctionExpression: (parameters) =>
          IsEmptyFunctionExpression(parameters[0] as Expression<String>),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'isnullorempty',
      parametersLength: 1,
      createFunctionExpression: (parameters) =>
          IsNullOrEmptyFunctionExpression(parameters[0] as Expression<String?>),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'count',
      parametersLength: 1,
      createFunctionExpression: (parameters) => ListCountFunctionExpression(
          parameters[0] as Expression<List<dynamic>>),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'datetime',
      parametersLength: 1,
      createFunctionExpression: (parameters) =>
          DateTimeFunctionExpression(parameters[0] as Expression<String>),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'duration',
      parametersLength: 1,
      createFunctionExpression: (parameters) =>
          DurationFunctionExpression(parameters[0] as Expression<String>),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'now',
      parametersLength: 0,
      createFunctionExpression: (parameters) => NowFunctionExpression(),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'nowinutc',
      parametersLength: 0,
      createFunctionExpression: (parameters) => NowInUtcFunctionExpression(),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'diffdatetime',
      parametersLength: 2,
      createFunctionExpression: (parameters) => DiffDateTimeFunctionExpression(
          parameters[0] as Expression<DateTime>,
          parameters[1] as Expression<DateTime>),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'durationindays',
      parametersLength: 1,
      createFunctionExpression: (parameters) =>
          DurationInDaysFunctionExpression(
              parameters[0] as Expression<Duration>),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'durationinhours',
      parametersLength: 1,
      createFunctionExpression: (parameters) =>
          DurationInHoursFunctionExpression(
              parameters[0] as Expression<Duration>),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'durationinminutes',
      parametersLength: 1,
      createFunctionExpression: (parameters) =>
          DurationInMinutesFunctionExpression(
              parameters[0] as Expression<Duration>),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'durationinseconds',
      parametersLength: 1,
      createFunctionExpression: (parameters) =>
          DurationInSecondsFunctionExpression(
              parameters[0] as Expression<Duration>),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'matches',
      parametersLength: 2,
      createFunctionExpression: (parameters) => MatchesFunctionExpression(
          parameters[0] as Expression<String>,
          parameters[1] as Expression<String>),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'contains',
      parametersLength: 2,
      createFunctionExpression: (parameters) => ContainsFunctionExpression(
          parameters[0] as Expression<String>,
          parameters[1] as Expression<String>),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'startswith',
      parametersLength: 2,
      createFunctionExpression: (parameters) => StartsWithFunctionExpression(
          parameters[0] as Expression<String>,
          parameters[1] as Expression<String>),
    ),
    ExplicitFunctionExpressionFactory(
      name: 'endswith',
      parametersLength: 2,
      createFunctionExpression: (parameters) => EndsWithFunctionExpression(
          parameters[0] as Expression<String>,
          parameters[1] as Expression<String>),
    ),
  ];
}
