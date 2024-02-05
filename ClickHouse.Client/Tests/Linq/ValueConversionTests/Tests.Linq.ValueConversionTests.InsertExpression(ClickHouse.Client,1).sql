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
	Enum,
	Value2,
	BoolValue,
	AnotherBoolValue
)
VALUES
(
	toInt32(1),
	'[]',
	'Value1',
	'[{"Value":"inserted"}]',
	'N',
	'F'
)

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
	e.Id = toInt32(1)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ValueConversion

