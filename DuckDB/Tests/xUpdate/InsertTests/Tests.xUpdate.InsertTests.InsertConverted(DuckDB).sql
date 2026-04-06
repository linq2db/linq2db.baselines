-- DuckDB

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 1000

-- DuckDB
DECLARE $tt  -- Int64
SET     $tt = 600000000

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	1001,
	CAST($tt AS BIGINT)
)

-- DuckDB

SELECT
	t.ID,
	t.BigIntValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1001
LIMIT 1

-- DuckDB

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 1000

