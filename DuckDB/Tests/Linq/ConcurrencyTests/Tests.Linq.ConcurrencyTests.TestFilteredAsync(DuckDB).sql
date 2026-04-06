-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Stamp  -- Int32
SET     $Stamp = -10
DECLARE $Value NVarChar(7) -- String
SET     $Value = 'initial'

INSERT INTO ConcurrencyFiltered
(
	Id,
	Stamp,
	"Value"
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Stamp AS INTEGER),
	CAST($Value AS VARCHAR)
)

-- DuckDB

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

-- DuckDB
DECLARE $Value NVarChar(7) -- String
SET     $Value = 'value 1'
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Stamp  -- Int32
SET     $Stamp = -10

UPDATE
	ConcurrencyFiltered
SET
	Stamp = ConcurrencyFiltered.Stamp + 1,
	"Value" = CAST($Value AS VARCHAR)
WHERE
	ConcurrencyFiltered.Id = 2 AND ConcurrencyFiltered.Id = CAST($Id AS INTEGER) AND
	ConcurrencyFiltered.Stamp = CAST($Stamp AS INTEGER)

-- DuckDB

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

-- DuckDB
DECLARE $Value NVarChar(7) -- String
SET     $Value = 'value 2'
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Stamp  -- Int32
SET     $Stamp = -10

UPDATE
	ConcurrencyFiltered
SET
	Stamp = ConcurrencyFiltered.Stamp + 1,
	"Value" = CAST($Value AS VARCHAR)
WHERE
	ConcurrencyFiltered.Id = 1 AND ConcurrencyFiltered.Id = CAST($Id AS INTEGER) AND
	ConcurrencyFiltered.Stamp = CAST($Stamp AS INTEGER)

-- DuckDB

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Stamp  -- Int32
SET     $Stamp = -9

DELETE FROM
	ConcurrencyFiltered r
WHERE
	r.Id = 2 AND r.Id = CAST($Id AS INTEGER) AND r.Stamp = CAST($Stamp AS INTEGER)

-- DuckDB

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Stamp  -- Int32
SET     $Stamp = -9

DELETE FROM
	ConcurrencyFiltered r
WHERE
	r.Id = 1 AND r.Id = CAST($Id AS INTEGER) AND r.Stamp = CAST($Stamp AS INTEGER)

-- DuckDB

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

