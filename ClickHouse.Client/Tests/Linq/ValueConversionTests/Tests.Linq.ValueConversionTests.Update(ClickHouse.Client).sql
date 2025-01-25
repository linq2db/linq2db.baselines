BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ValueConversion

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
(1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y','F',NULL),
(2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N','F',toDateTime64('2020-02-29 00:00:00.0000000', 7)),
(3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N','F',toDateTime64('2020-02-29 00:00:00.0000000', 7)),
(4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N','F',NULL),
(5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y','F',toDateTime64('2020-02-29 00:00:00.0000000', 7)),
(6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N','F',toDateTime64('2020-02-29 00:00:00.0000000', 7)),
(7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N','F',NULL),
(8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N','F',toDateTime64('2020-02-29 00:00:00.0000000', 7)),
(9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y','F',toDateTime64('2020-02-29 00:00:00.0000000', 7)),
(10,NULL,NULL,'Value1','Value2','Value2','Value2','N','F',NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ValueConversion

