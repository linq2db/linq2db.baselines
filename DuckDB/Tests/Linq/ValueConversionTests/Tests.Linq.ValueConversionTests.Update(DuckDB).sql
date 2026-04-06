-- DuckDB
DECLARE $Value2 NVarChar(21) -- String
SET     $Value2 = '[{"Value":"updated"}]'
DECLARE $EnumWithNull  -- Object
SET     $EnumWithNull = NULL
DECLARE $EnumWithNullDeclarative  -- Object
SET     $EnumWithNullDeclarative = NULL

UPDATE
	ValueConversion
SET
	Value1 = ValueConversion.Value1,
	Value2 = CAST($Value2 AS VARCHAR),
	EnumWithNull = CAST($EnumWithNull AS VARCHAR),
	EnumWithNullDeclarative = CAST($EnumWithNullDeclarative AS VARCHAR)
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
DECLARE $Value1 NVarChar(20) -- String
SET     $Value1 = '{"some":"updated2}"}'
DECLARE $Value2 NVarChar(22) -- String
SET     $Value2 = '[{"Value":"updated2"}]'
DECLARE $Enum NVarChar(6) -- String
SET     $Enum = 'Value1'
DECLARE $EnumNullable  -- Object
SET     $EnumNullable = NULL
DECLARE $EnumWithNull NVarChar(6) -- String
SET     $EnumWithNull = 'Value2'
DECLARE $EnumWithNullDeclarative NVarChar(6) -- String
SET     $EnumWithNullDeclarative = 'Value2'
DECLARE $BoolValue NVarChar(1) -- String
SET     $BoolValue = 'N'
DECLARE $AnotherBoolValue NVarChar(1) -- String
SET     $AnotherBoolValue = 'F'
DECLARE $DateTimeNullable  -- Object
SET     $DateTimeNullable = NULL
DECLARE $Id  -- Int32
SET     $Id = 2

UPDATE
	ValueConversion
SET
	Value1 = CAST($Value1 AS VARCHAR),
	Value2 = CAST($Value2 AS VARCHAR),
	Enum = CAST($Enum AS VARCHAR),
	EnumNullable = CAST($EnumNullable AS VARCHAR),
	EnumWithNull = CAST($EnumWithNull AS VARCHAR),
	EnumWithNullDeclarative = CAST($EnumWithNullDeclarative AS VARCHAR),
	BoolValue = CAST($BoolValue AS VARCHAR),
	AnotherBoolValue = CAST($AnotherBoolValue AS VARCHAR),
	DateTimeNullable = CAST($DateTimeNullable AS TIMESTAMP)
WHERE
	ValueConversion.Id = CAST($Id AS INTEGER)

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
DECLARE $Value1  -- Object
SET     $Value1 = NULL
DECLARE $Value2  -- Object
SET     $Value2 = NULL
DECLARE $Enum NVarChar(6) -- String
SET     $Enum = 'Value1'
DECLARE $EnumNullable  -- Object
SET     $EnumNullable = NULL
DECLARE $EnumWithNull  -- Object
SET     $EnumWithNull = NULL
DECLARE $EnumWithNullDeclarative  -- Object
SET     $EnumWithNullDeclarative = NULL
DECLARE $BoolValue NVarChar(1) -- String
SET     $BoolValue = 'N'
DECLARE $AnotherBoolValue NVarChar(1) -- String
SET     $AnotherBoolValue = 'F'
DECLARE $DateTimeNullable  -- Object
SET     $DateTimeNullable = NULL
DECLARE $Id  -- Int32
SET     $Id = 3

UPDATE
	ValueConversion
SET
	Value1 = CAST($Value1 AS VARCHAR),
	Value2 = CAST($Value2 AS VARCHAR),
	Enum = CAST($Enum AS VARCHAR),
	EnumNullable = CAST($EnumNullable AS VARCHAR),
	EnumWithNull = CAST($EnumWithNull AS VARCHAR),
	EnumWithNullDeclarative = CAST($EnumWithNullDeclarative AS VARCHAR),
	BoolValue = CAST($BoolValue AS VARCHAR),
	AnotherBoolValue = CAST($AnotherBoolValue AS VARCHAR),
	DateTimeNullable = CAST($DateTimeNullable AS TIMESTAMP)
WHERE
	ValueConversion.Id = CAST($Id AS INTEGER)

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

