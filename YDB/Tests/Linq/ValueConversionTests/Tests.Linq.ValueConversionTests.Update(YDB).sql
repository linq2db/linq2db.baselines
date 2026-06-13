-- YDB Ydb
DECLARE $Value2 Text(21) -- String
SET     $Value2 = '[{"Value":"updated"}]'u
DECLARE $EnumWithNull Text -- AnsiString
SET     $EnumWithNull = NULL
DECLARE $EnumWithNullDeclarative Text -- AnsiString
SET     $EnumWithNullDeclarative = NULL

UPDATE
	ValueConversion
SET
	Value1 = ValueConversion.Value1,
	Value2 = $Value2,
	EnumWithNull = $EnumWithNull,
	EnumWithNullDeclarative = $EnumWithNullDeclarative
WHERE
	ValueConversion.Id = 1

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
DECLARE $Value1 Text(20) -- String
SET     $Value1 = '{"some":"updated2}"}'u
DECLARE $Value2 Text(22) -- String
SET     $Value2 = '[{"Value":"updated2"}]'u
DECLARE $Enum Text(6) -- String
SET     $Enum = 'Value1'u
DECLARE $EnumNullable Text -- AnsiString
SET     $EnumNullable = NULL
DECLARE $EnumWithNull Text(6) -- AnsiString
SET     $EnumWithNull = 'Value2'u
DECLARE $EnumWithNullDeclarative Text(6) -- AnsiString
SET     $EnumWithNullDeclarative = 'Value2'u
DECLARE $BoolValue Text(1) -- AnsiString
SET     $BoolValue = 'N'u
DECLARE $AnotherBoolValue Text(1) -- AnsiString
SET     $AnotherBoolValue = 'F'u
DECLARE $DateTimeNullable Timestamp -- DateTime2
SET     $DateTimeNullable = NULL
DECLARE $Id Int32
SET     $Id = 2

UPDATE
	ValueConversion
SET
	Value1 = $Value1,
	Value2 = $Value2,
	`Enum` = $Enum,
	EnumNullable = $EnumNullable,
	EnumWithNull = $EnumWithNull,
	EnumWithNullDeclarative = $EnumWithNullDeclarative,
	BoolValue = $BoolValue,
	AnotherBoolValue = $AnotherBoolValue,
	DateTimeNullable = $DateTimeNullable
WHERE
	ValueConversion.Id = $Id

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
DECLARE $Value1 Text -- String
SET     $Value1 = NULL
DECLARE $Value2 Text -- String
SET     $Value2 = NULL
DECLARE $Enum Text(6) -- String
SET     $Enum = 'Value1'u
DECLARE $EnumNullable Text -- AnsiString
SET     $EnumNullable = NULL
DECLARE $EnumWithNull Text -- AnsiString
SET     $EnumWithNull = NULL
DECLARE $EnumWithNullDeclarative Text -- AnsiString
SET     $EnumWithNullDeclarative = NULL
DECLARE $BoolValue Text(1) -- AnsiString
SET     $BoolValue = 'N'u
DECLARE $AnotherBoolValue Text(1) -- AnsiString
SET     $AnotherBoolValue = 'F'u
DECLARE $DateTimeNullable Timestamp -- DateTime2
SET     $DateTimeNullable = NULL
DECLARE $Id Int32
SET     $Id = 3

UPDATE
	ValueConversion
SET
	Value1 = $Value1,
	Value2 = $Value2,
	`Enum` = $Enum,
	EnumNullable = $EnumNullable,
	EnumWithNull = $EnumWithNull,
	EnumWithNullDeclarative = $EnumWithNullDeclarative,
	BoolValue = $BoolValue,
	AnotherBoolValue = $AnotherBoolValue,
	DateTimeNullable = $DateTimeNullable
WHERE
	ValueConversion.Id = $Id

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

