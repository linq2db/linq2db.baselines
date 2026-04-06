-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Value1 NVarChar(2) -- String
SET     $Value1 = '[]'
DECLARE $Enum NVarChar(6) -- String
SET     $Enum = 'Value1'
DECLARE $Value2 NVarChar(22) -- String
SET     $Value2 = '[{"Value":"inserted"}]'
DECLARE $BoolValue NVarChar(1) -- String
SET     $BoolValue = 'Y'
DECLARE $AnotherBoolValue NVarChar(1) -- String
SET     $AnotherBoolValue = 'T'

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
	CAST($Id AS INTEGER),
	CAST($Value1 AS VARCHAR),
	CAST($Enum AS VARCHAR),
	CAST($Value2 AS VARCHAR),
	CAST($BoolValue AS VARCHAR),
	CAST($AnotherBoolValue AS VARCHAR)
)

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
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Value1  -- Object
SET     $Value1 = NULL
DECLARE $Value2  -- Object
SET     $Value2 = NULL
DECLARE $Enum NVarChar(6) -- String
SET     $Enum = 'Value2'
DECLARE $BoolValue NVarChar(1) -- String
SET     $BoolValue = 'N'
DECLARE $AnotherBoolValue NVarChar(1) -- String
SET     $AnotherBoolValue = 'F'

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
	CAST($Id AS INTEGER),
	CAST($Value1 AS VARCHAR),
	CAST($Value2 AS VARCHAR),
	CAST($Enum AS VARCHAR),
	CAST($BoolValue AS VARCHAR),
	CAST($AnotherBoolValue AS VARCHAR)
)

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
DECLARE $Id  -- Int32
SET     $Id = 3
DECLARE $Value1 NVarChar(21) -- String
SET     $Value1 = '{"some":"inserted3}"}'
DECLARE $Value2 NVarChar(23) -- String
SET     $Value2 = '[{"Value":"inserted3"}]'
DECLARE $Enum NVarChar(6) -- String
SET     $Enum = 'Value3'
DECLARE $EnumNullable  -- Object
SET     $EnumNullable = NULL
DECLARE $EnumWithNull NVarChar(6) -- String
SET     $EnumWithNull = 'Value1'
DECLARE $EnumWithNullDeclarative NVarChar(6) -- String
SET     $EnumWithNullDeclarative = 'Value1'
DECLARE $BoolValue NVarChar(1) -- String
SET     $BoolValue = 'Y'
DECLARE $AnotherBoolValue NVarChar(1) -- String
SET     $AnotherBoolValue = 'T'
DECLARE $DateTimeNullable  -- Object
SET     $DateTimeNullable = NULL

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
	CAST($Id AS INTEGER),
	CAST($Value1 AS VARCHAR),
	CAST($Value2 AS VARCHAR),
	CAST($Enum AS VARCHAR),
	CAST($EnumNullable AS VARCHAR),
	CAST($EnumWithNull AS VARCHAR),
	CAST($EnumWithNullDeclarative AS VARCHAR),
	CAST($BoolValue AS VARCHAR),
	CAST($AnotherBoolValue AS VARCHAR),
	CAST($DateTimeNullable AS TIMESTAMP)
)

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

-- DuckDB

SELECT
	COUNT(*)
FROM
	ValueConversion t1

