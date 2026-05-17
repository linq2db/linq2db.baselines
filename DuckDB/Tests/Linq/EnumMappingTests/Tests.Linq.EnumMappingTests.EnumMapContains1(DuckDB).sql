-- DuckDB
DECLARE $p  -- Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < $p

-- DuckDB

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	101,
	12
)

-- DuckDB

SELECT
	COUNT(*)
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue IN (12)

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < $p

