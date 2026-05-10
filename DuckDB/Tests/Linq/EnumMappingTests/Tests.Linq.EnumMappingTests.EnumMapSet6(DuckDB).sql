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
	IntValue
)
VALUES
(
	101,
	3
)

-- DuckDB

UPDATE
	LinqDataTypes
SET
	IntValue = 4
WHERE
	LinqDataTypes.ID = 101 AND LinqDataTypes.IntValue = 3

-- DuckDB

SELECT
	COUNT(*)
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.IntValue = 4

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < $p

