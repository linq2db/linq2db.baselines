-- DuckDB
DECLARE $Value2 NVarChar(200) -- String
SET     $Value2 = '[{"Value":"updated"}]'
DECLARE $EnumWithNull VarChar(50) -- AnsiString
SET     $EnumWithNull = NULL
DECLARE $EnumWithNullDeclarative VarChar(50) -- AnsiString
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

-- DuckDB

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

-- DuckDB
DECLARE $Value1 NVarChar(200) -- String
SET     $Value1 = '{"some":"updated2}"}'
DECLARE $Value2 NVarChar(200) -- String
SET     $Value2 = '[{"Value":"updated2"}]'
DECLARE $Enum NVarChar(50) -- String
SET     $Enum = 'Value1'
DECLARE $EnumNullable VarChar(50) -- AnsiString
SET     $EnumNullable = NULL
DECLARE $EnumWithNull VarChar(50) -- AnsiString
SET     $EnumWithNull = 'Value2'
DECLARE $EnumWithNullDeclarative VarChar(50) -- AnsiString
SET     $EnumWithNullDeclarative = 'Value2'
DECLARE $BoolValue VarChar(1) -- AnsiString
SET     $BoolValue = 'N'
DECLARE $AnotherBoolValue VarChar(1) -- AnsiString
SET     $AnotherBoolValue = 'F'
DECLARE $DateTimeNullable  -- DateTime2
SET     $DateTimeNullable = NULL
DECLARE $Id  -- Int32
SET     $Id = 2

UPDATE
	ValueConversion
SET
	Value1 = $Value1,
	Value2 = $Value2,
	Enum = $Enum,
	EnumNullable = $EnumNullable,
	EnumWithNull = $EnumWithNull,
	EnumWithNullDeclarative = $EnumWithNullDeclarative,
	BoolValue = $BoolValue,
	AnotherBoolValue = $AnotherBoolValue,
	DateTimeNullable = $DateTimeNullable
WHERE
	ValueConversion.Id = $Id

-- DuckDB

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

-- DuckDB
DECLARE $Value1 NVarChar(200) -- String
SET     $Value1 = NULL
DECLARE $Value2 NVarChar(200) -- String
SET     $Value2 = NULL
DECLARE $Enum NVarChar(50) -- String
SET     $Enum = 'Value1'
DECLARE $EnumNullable VarChar(50) -- AnsiString
SET     $EnumNullable = NULL
DECLARE $EnumWithNull VarChar(50) -- AnsiString
SET     $EnumWithNull = NULL
DECLARE $EnumWithNullDeclarative VarChar(50) -- AnsiString
SET     $EnumWithNullDeclarative = NULL
DECLARE $BoolValue VarChar(1) -- AnsiString
SET     $BoolValue = 'N'
DECLARE $AnotherBoolValue VarChar(1) -- AnsiString
SET     $AnotherBoolValue = 'F'
DECLARE $DateTimeNullable  -- DateTime2
SET     $DateTimeNullable = NULL
DECLARE $Id  -- Int32
SET     $Id = 3

UPDATE
	ValueConversion
SET
	Value1 = $Value1,
	Value2 = $Value2,
	Enum = $Enum,
	EnumNullable = $EnumNullable,
	EnumWithNull = $EnumWithNull,
	EnumWithNullDeclarative = $EnumWithNullDeclarative,
	BoolValue = $BoolValue,
	AnotherBoolValue = $AnotherBoolValue,
	DateTimeNullable = $DateTimeNullable
WHERE
	ValueConversion.Id = $Id

-- DuckDB

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

