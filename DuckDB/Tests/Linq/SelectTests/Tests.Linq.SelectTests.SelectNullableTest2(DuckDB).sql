-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 1000
DECLARE $MoneyValue NVarChar(1) -- String
SET     $MoneyValue = '0'
DECLARE $DateTimeValue  -- Object
SET     $DateTimeValue = NULL
DECLARE $DateTimeValue2  -- Object
SET     $DateTimeValue2 = NULL
DECLARE $BoolValue  -- Boolean
SET     $BoolValue = False
DECLARE $GuidValue  -- Object
SET     $GuidValue = NULL
DECLARE $SmallIntValue  -- Object
SET     $SmallIntValue = NULL
DECLARE $IntValue  -- Object
SET     $IntValue = NULL
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

SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1
WHERE
	t1.ID = 1000
LIMIT 1

-- DuckDB

DELETE FROM
	LinqDataTypes t1
WHERE
	t1.ID = 1000

