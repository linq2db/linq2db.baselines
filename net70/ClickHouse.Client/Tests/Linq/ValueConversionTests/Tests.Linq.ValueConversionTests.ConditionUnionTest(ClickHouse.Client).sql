﻿BeforeExecute
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
(toInt32(1),'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y','F',NULL),
(toInt32(2),'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N','F',toDateTime64('2020-02-29 00:00:00.0000000', 7)),
(toInt32(3),'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N','F',toDateTime64('2020-02-29 00:00:00.0000000', 7)),
(toInt32(4),'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N','F',NULL),
(toInt32(5),'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y','F',toDateTime64('2020-02-29 00:00:00.0000000', 7)),
(toInt32(6),'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N','F',toDateTime64('2020-02-29 00:00:00.0000000', 7)),
(toInt32(7),'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N','F',NULL),
(toInt32(8),'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N','F',toDateTime64('2020-02-29 00:00:00.0000000', 7)),
(toInt32(9),'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y','F',toDateTime64('2020-02-29 00:00:00.0000000', 7)),
(toInt32(10),NULL,NULL,'Value1','Value2','Value2','Value2','N','F',NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN t1.EnumNullable IS NOT NULL
			THEN t1.EnumNullable
		ELSE t1.Enum
	END
FROM
	ValueConversion t1
UNION ALL
SELECT
	CASE
		WHEN t1_1.EnumNullable IS NOT NULL
			THEN t1_1.EnumNullable
		ELSE t1_1.Enum
	END
FROM
	ValueConversion t1_1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ValueConversion

