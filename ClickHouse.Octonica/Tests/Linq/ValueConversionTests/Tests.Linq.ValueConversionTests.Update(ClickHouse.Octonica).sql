BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ValueConversion
UPDATE
	Value1 = Value1,
	Value2 = '[{"Value":"updated"}]',
	EnumWithNull = NULL,
	EnumWithNullDeclarative = NULL
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ValueConversion
UPDATE
	Value1 = '{"some":"updated2}"}',
	Value2 = '[{"Value":"updated2"}]',
	Enum = 'Value1',
	EnumNullable = NULL,
	EnumWithNull = 'Value2',
	EnumWithNullDeclarative = 'Value2',
	BoolValue = 'N',
	AnotherBoolValue = 'F',
	DateTimeNullable = NULL
WHERE
	Id = 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
	e.Id = 2
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ValueConversion
UPDATE
	Value1 = NULL,
	Value2 = NULL,
	Enum = 'Value1',
	EnumNullable = NULL,
	EnumWithNull = NULL,
	EnumWithNullDeclarative = NULL,
	BoolValue = 'N',
	AnotherBoolValue = 'F',
	DateTimeNullable = NULL
WHERE
	Id = 3

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
	e.Id = 3
LIMIT 1

