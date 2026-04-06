-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 5000
DECLARE $MoneyValue NVarChar(1) -- String
SET     $MoneyValue = '0'
DECLARE $DateTimeValue NVarChar(26) -- String
SET     $DateTimeValue = '2018-01-03 00:00:00.000000'
DECLARE $BoolValue  -- Boolean
SET     $BoolValue = False
DECLARE $GuidValue  -- Guid
SET     $GuidValue = '00000000-0000-0000-0000-000000000000'::UUID
DECLARE $BinaryValue  -- Object
SET     $BinaryValue = NULL
DECLARE $SmallIntValue  -- Int16
SET     $SmallIntValue = -2
DECLARE $StringValue  -- Object
SET     $StringValue = NULL

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue,
	StringValue
)
VALUES
(
	CAST($ID AS INTEGER),
	CAST($MoneyValue AS DECIMAL(38, 18)),
	CAST($DateTimeValue AS TIMESTAMP),
	CAST($BoolValue AS BOOLEAN),
	CAST($GuidValue AS UUID),
	CAST($BinaryValue AS BLOB),
	CAST($SmallIntValue AS SMALLINT),
	CAST($StringValue AS VARCHAR)
)

-- DuckDB

SELECT
	COUNT(*)
FROM
	LinqDataTypes t
WHERE
	t.ID = 5000 AND t.DateTimeValue + CAST(t.SmallIntValue * Interval '1 Day' AS INTERVAL) < make_timestamp(2018, 1, 2, 0, 0, 0)

-- DuckDB

DELETE FROM
	LinqDataTypes t
WHERE
	t.ID = 5000

