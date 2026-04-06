-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 1001
DECLARE $MoneyValue NVarChar(4) -- String
SET     $MoneyValue = '1000'
DECLARE $SmallIntValue  -- Int16
SET     $SmallIntValue = 100

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	SmallIntValue
)
VALUES
(
	CAST($ID AS INTEGER),
	CAST($MoneyValue AS DECIMAL(38, 18)),
	CAST($SmallIntValue AS SMALLINT)
)

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 1001

UPDATE
	LinqDataTypes
SET
	MoneyValue = 2000,
	SmallIntValue = 200
WHERE
	LinqDataTypes.ID = CAST($ID AS INTEGER)

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 1001

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.BoolValue,
	t.GuidValue,
	t.BinaryValue,
	t.SmallIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.ID = CAST($ID AS INTEGER)
LIMIT 2

