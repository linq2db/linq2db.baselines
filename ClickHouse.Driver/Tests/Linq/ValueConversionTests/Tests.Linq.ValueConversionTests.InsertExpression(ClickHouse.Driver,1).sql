BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Enum,
	Value2,
	BoolValue,
	AnotherBoolValue
)
VALUES
(
	1,
	'[]',
	'Value1',
	'[{"Value":"inserted"}]',
	'N',
	'F'
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	e.Id,
	e.Value1,
	e.Value2,
	e.Enum,
	e.EnumNullable,
	e.EnumWithNull,
	e.EnumWithNullDeclarative,
	e.BoolValue,
	e.AnotherBoolValue,
	e.DateTimeNullable
FROM
	ValueConversion e
WHERE
	e.Id = 1
LIMIT 2

