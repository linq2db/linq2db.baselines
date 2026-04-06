-- DuckDB
DECLARE $p  -- Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < CAST($p AS INTEGER)

-- DuckDB

INSERT INTO LinqDataTypes
(
	ID
)
VALUES
(
	101
)

-- DuckDB

SELECT
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue IS NULL
LIMIT 1

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < CAST($p AS INTEGER)

