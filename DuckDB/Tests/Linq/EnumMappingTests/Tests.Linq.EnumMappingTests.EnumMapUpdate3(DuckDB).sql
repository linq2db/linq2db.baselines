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
	11
)

-- DuckDB

UPDATE
	LinqDataTypes
SET
	BigIntValue = 12
WHERE
	LinqDataTypes.ID = 101 AND LinqDataTypes.BigIntValue = 11

-- DuckDB

SELECT
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = 12
LIMIT 1

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < $p

