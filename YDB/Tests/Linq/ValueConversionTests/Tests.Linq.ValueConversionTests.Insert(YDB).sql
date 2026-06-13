-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Value1 Text(2) -- String
SET     $Value1 = '[]'u
DECLARE $Enum Text(6) -- String
SET     $Enum = 'Value1'u
DECLARE $Value2 Text(22) -- String
SET     $Value2 = '[{"Value":"inserted"}]'u
DECLARE $BoolValue Text(1) -- AnsiString
SET     $BoolValue = 'Y'u
DECLARE $AnotherBoolValue Text(1) -- AnsiString
SET     $AnotherBoolValue = 'T'u

INSERT INTO ValueConversion
(
	Id,
	Value1,
	`Enum`,
	Value2,
	BoolValue,
	AnotherBoolValue
)
VALUES
(
	$Id,
	$Value1,
	$Enum,
	$Value2,
	$BoolValue,
	$AnotherBoolValue
)

-- YDB Ydb

SELECT
	e.Id as Id,
	e.Value1 as Value1,
	e.Value2 as Value2,
	e.`Enum` as `Enum`,
	e.EnumNullable as EnumNullable,
	e.EnumWithNull as EnumWithNull,
	e.EnumWithNullDeclarative as EnumWithNullDeclarative,
	e.BoolValue as BoolValue,
	e.AnotherBoolValue as AnotherBoolValue,
	e.DateTimeNullable as DateTimeNullable
FROM
	ValueConversion e
WHERE
	e.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Value1 Text -- String
SET     $Value1 = NULL
DECLARE $Value2 Text -- String
SET     $Value2 = NULL
DECLARE $Enum Text(6) -- String
SET     $Enum = 'Value2'u
DECLARE $BoolValue Text(1) -- AnsiString
SET     $BoolValue = 'N'u
DECLARE $AnotherBoolValue Text(1) -- AnsiString
SET     $AnotherBoolValue = 'F'u

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Value2,
	`Enum`,
	BoolValue,
	AnotherBoolValue
)
VALUES
(
	$Id,
	$Value1,
	$Value2,
	$Enum,
	$BoolValue,
	$AnotherBoolValue
)

-- YDB Ydb

SELECT
	e.Id as Id,
	e.Value1 as Value1,
	e.Value2 as Value2,
	e.`Enum` as `Enum`,
	e.EnumNullable as EnumNullable,
	e.EnumWithNull as EnumWithNull,
	e.EnumWithNullDeclarative as EnumWithNullDeclarative,
	e.BoolValue as BoolValue,
	e.AnotherBoolValue as AnotherBoolValue,
	e.DateTimeNullable as DateTimeNullable
FROM
	ValueConversion e
WHERE
	e.Id = 2
LIMIT 1

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 3
DECLARE $Value1 Text(21) -- String
SET     $Value1 = '{"some":"inserted3}"}'u
DECLARE $Value2 Text(23) -- String
SET     $Value2 = '[{"Value":"inserted3"}]'u
DECLARE $Enum Text(6) -- String
SET     $Enum = 'Value3'u
DECLARE $EnumNullable Text -- AnsiString
SET     $EnumNullable = NULL
DECLARE $EnumWithNull Text(6) -- AnsiString
SET     $EnumWithNull = 'Value1'u
DECLARE $EnumWithNullDeclarative Text(6) -- AnsiString
SET     $EnumWithNullDeclarative = 'Value1'u
DECLARE $BoolValue Text(1) -- AnsiString
SET     $BoolValue = 'Y'u
DECLARE $AnotherBoolValue Text(1) -- AnsiString
SET     $AnotherBoolValue = 'T'u
DECLARE $DateTimeNullable Timestamp -- DateTime2
SET     $DateTimeNullable = NULL

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Value2,
	`Enum`,
	EnumNullable,
	EnumWithNull,
	EnumWithNullDeclarative,
	BoolValue,
	AnotherBoolValue,
	DateTimeNullable
)
VALUES
(
	$Id,
	$Value1,
	$Value2,
	$Enum,
	$EnumNullable,
	$EnumWithNull,
	$EnumWithNullDeclarative,
	$BoolValue,
	$AnotherBoolValue,
	$DateTimeNullable
)

-- YDB Ydb

SELECT
	e.Id as Id,
	e.Value1 as Value1,
	e.Value2 as Value2,
	e.`Enum` as `Enum`,
	e.EnumNullable as EnumNullable,
	e.EnumWithNull as EnumWithNull,
	e.EnumWithNullDeclarative as EnumWithNullDeclarative,
	e.BoolValue as BoolValue,
	e.AnotherBoolValue as AnotherBoolValue,
	e.DateTimeNullable as DateTimeNullable
FROM
	ValueConversion e
WHERE
	e.Id = 3
LIMIT 1

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	ValueConversion t1

