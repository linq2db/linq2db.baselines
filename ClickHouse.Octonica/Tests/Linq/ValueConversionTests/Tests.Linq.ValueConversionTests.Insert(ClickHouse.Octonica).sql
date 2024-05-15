BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ValueConversion

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS ValueConversion
(
	Id                      Int32,
	Value1                  Nullable(String),
	Value2                  Nullable(String),
	Enum                    String,
	EnumNullable            Nullable(String),
	EnumWithNull            Nullable(String),
	EnumWithNullDeclarative Nullable(String),
	BoolValue               String,
	AnotherBoolValue        String,
	DateTimeNullable        Nullable(DateTime64(7)),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
	'Y',
	'T'
)

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

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Value2,
	Enum,
	BoolValue,
	AnotherBoolValue
)
VALUES
(
	2,
	NULL,
	NULL,
	'Value2',
	'N',
	'F'
)

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

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Value2,
	Enum,
	EnumNullable,
	EnumWithNull,
	EnumWithNullDeclarative,
	BoolValue,
	AnotherBoolValue,
	DateTimeNullable
)
VALUES
(
	3,
	'{"some":"inserted3}"}',
	'[{"Value":"inserted3"}]',
	'Value3',
	NULL,
	'Value1',
	'Value1',
	'Y',
	'T',
	NULL
)

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	ValueConversion t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ValueConversion

