-- DuckDB
DECLARE $p  -- Int32
SET     $p = 104

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < CAST($p AS INTEGER)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 101
DECLARE $Value NVarChar(2) -- String
SET     $Value = '11'

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Value AS VARCHAR)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 102
DECLARE $Value NVarChar(2) -- String
SET     $Value = '22'

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Value AS VARCHAR)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 103
DECLARE $Value  -- Object
SET     $Value = NULL

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Value AS VARCHAR)
)

-- DuckDB

SELECT
	r.ID,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID <= 103
ORDER BY
	r.ID

-- DuckDB

SELECT
	r.ID,
	r.IntValue,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID <= 103
ORDER BY
	r.ID

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 104

DELETE FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID < CAST($p AS INTEGER)

