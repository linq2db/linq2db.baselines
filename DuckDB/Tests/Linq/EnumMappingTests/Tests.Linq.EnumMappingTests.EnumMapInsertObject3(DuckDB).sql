-- DuckDB
DECLARE $p INTEGER -- Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < $p

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 101
DECLARE $TestField BIGINT -- Int64
SET     $TestField = 12

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	$Id,
	$TestField
)

-- DuckDB
SELECT
	COUNT(*)
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = 12

-- DuckDB
DECLARE $p INTEGER -- Int32
SET     $p = 102

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < $p

