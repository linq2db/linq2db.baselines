-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 100500
DECLARE $MoneyValue NVarChar(4) -- String
SET     $MoneyValue = '3000'
DECLARE $DateTimeValue  -- Object
SET     $DateTimeValue = NULL
DECLARE $DateTimeValue2  -- Object
SET     $DateTimeValue2 = NULL
DECLARE $BoolValue  -- Object
SET     $BoolValue = NULL
DECLARE $GuidValue  -- Object
SET     $GuidValue = NULL
DECLARE $SmallIntValue  -- Object
SET     $SmallIntValue = NULL
DECLARE $IntValue  -- Int32
SET     $IntValue = 60
DECLARE $BigIntValue  -- Object
SET     $BigIntValue = NULL
DECLARE $StringValue  -- Object
SET     $StringValue = NULL

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(
	CAST($ID AS INTEGER),
	CAST($MoneyValue AS DECIMAL(38, 18)),
	CAST($DateTimeValue AS TIMESTAMP),
	CAST($DateTimeValue2 AS TIMESTAMP),
	CAST($BoolValue AS BOOLEAN),
	CAST($GuidValue AS UUID),
	CAST($SmallIntValue AS SMALLINT),
	CAST($IntValue AS INTEGER),
	CAST($BigIntValue AS BIGINT),
	CAST($StringValue AS VARCHAR)
)

-- DuckDB
DECLARE $value2 NVarChar(5) -- String
SET     $value2 = '13621'
DECLARE $id  -- Int32
SET     $id = 100500

UPDATE
	LinqDataTypes
SET
	SmallIntValue = CAST(Floor(LinqDataTypes.MoneyValue / (CAST($value2 AS DECIMAL(38, 18)) / LinqDataTypes.IntValue)) AS SMALLINT)
WHERE
	LinqDataTypes.ID = CAST($id AS INTEGER)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 100500

SELECT
	t1.SmallIntValue
FROM
	LinqDataTypes t1
WHERE
	t1.ID = CAST($id AS INTEGER)
LIMIT 1

