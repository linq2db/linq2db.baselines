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
	5
)

-- DuckDB

SELECT
	r.ID,
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < $p

