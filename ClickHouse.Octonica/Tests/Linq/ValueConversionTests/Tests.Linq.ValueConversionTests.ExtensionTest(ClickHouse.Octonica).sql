BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Value1,
	t.Value2,
	t.Enum,
	t.EnumNullable,
	t.EnumWithNull,
	t.EnumWithNullDeclarative,
	t.BoolValue,
	t.AnotherBoolValue,
	t.DateTimeNullable
FROM
	ValueConversion t
WHERE
	t.Value2 = '[{"Value":"Value1"}]'

