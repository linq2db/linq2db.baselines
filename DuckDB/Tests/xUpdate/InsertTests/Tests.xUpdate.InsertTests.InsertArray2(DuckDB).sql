-- DuckDB

DELETE FROM
	LinqDataTypes t
WHERE
	t.ID > 1000

-- DuckDB
DECLARE $arr  -- Object
SET     $arr = NULL

INSERT INTO LinqDataTypes
(
	ID,
	BoolValue,
	BinaryValue
)
VALUES
(
	1001,
	True,
	CAST($arr AS BLOB)
)

-- DuckDB

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.BoolValue,
	t.GuidValue,
	t.BinaryValue,
	t.SmallIntValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1001
LIMIT 2

-- DuckDB

DELETE FROM
	LinqDataTypes t
WHERE
	t.ID > 1000

