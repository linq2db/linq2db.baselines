-- DuckDB
DECLARE $p  -- Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < CAST($p AS INTEGER)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 101
DECLARE $TestField  -- Int64
SET     $TestField = 12

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($TestField AS BIGINT)
)

-- DuckDB

SELECT
	COUNT(*)
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = 12

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < CAST($p AS INTEGER)

