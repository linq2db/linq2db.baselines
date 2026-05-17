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
DECLARE $param  -- Int64
SET     $param = 11

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
SELECT
	r.ID,
	$param
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = 12

-- DuckDB

SELECT
	COUNT(*)
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = 11

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < $p

