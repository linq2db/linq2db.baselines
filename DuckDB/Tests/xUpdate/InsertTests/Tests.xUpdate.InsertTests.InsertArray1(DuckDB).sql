-- DuckDB

DELETE FROM
	LinqDataTypes t
WHERE
	t.ID > 1000

-- DuckDB

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
	NULL
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

