-- DuckDB

DELETE FROM
	LinqDataTypes t
WHERE
	t.ID > 1000

-- DuckDB
DECLARE $arr Binary(4)
SET     $arr = '\x01\x02\x03\x04'::BLOB

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

