-- YDB Ydb
DECLARE $testedList Text(20) -- String
SET     $testedList = '[{"Value":"Value1"}]'u

SELECT
	t.Id as Id,
	t.Value1 as Value1,
	t.Value2 as Value2,
	t.`Enum` as `Enum`,
	t.EnumNullable as EnumNullable,
	t.EnumWithNull as EnumWithNull,
	t.EnumWithNullDeclarative as EnumWithNullDeclarative,
	t.BoolValue as BoolValue,
	t.AnotherBoolValue as AnotherBoolValue,
	t.DateTimeNullable as DateTimeNullable
FROM
	ValueConversion t
WHERE
	t.Value2 = $testedList

