-- DuckDB
DECLARE $iteration  -- Int32
SET     $iteration = 2
DECLARE $Value1 NVarChar(2) -- String
SET     $Value1 = '[]'
DECLARE $Enum NVarChar(6) -- String
SET     $Enum = 'Value1'
DECLARE $inserted NVarChar(22) -- String
SET     $inserted = '[{"Value":"inserted"}]'
DECLARE $boolValue NVarChar(1) -- String
SET     $boolValue = 'Y'
DECLARE $boolValue_1 NVarChar(1) -- String
SET     $boolValue_1 = 'T'

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
	CAST($iteration AS INTEGER),
	CAST($Value1 AS VARCHAR),
	CAST($Enum AS VARCHAR),
	CAST($inserted AS VARCHAR),
	CAST($boolValue AS VARCHAR),
	CAST($boolValue_1 AS VARCHAR)
)

-- DuckDB
DECLARE $iteration  -- Int32
SET     $iteration = 2

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
	e.Id = CAST($iteration AS INTEGER)
LIMIT 2

