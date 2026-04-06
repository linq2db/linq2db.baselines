-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Stamp  -- Int32
SET     $Stamp = -10
DECLARE $Value NVarChar(7) -- String
SET     $Value = 'initial'

INSERT INTO ConcurrencyAutoIncrement
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
	ConcurrencyAutoIncrement t1

-- DuckDB
DECLARE $Value NVarChar(7) -- String
SET     $Value = 'value 1'
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Stamp  -- Int32
SET     $Stamp = -10

UPDATE
	ConcurrencyAutoIncrement
SET
	Stamp = ConcurrencyAutoIncrement.Stamp + 1,
	"Value" = CAST($Value AS VARCHAR)
WHERE
	ConcurrencyAutoIncrement.Id = CAST($Id AS INTEGER) AND
	ConcurrencyAutoIncrement.Stamp = CAST($Stamp AS INTEGER)

-- DuckDB

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyAutoIncrement t1

-- DuckDB
DECLARE $Value NVarChar(7) -- String
SET     $Value = 'value 2'
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Stamp  -- Int32
SET     $Stamp = -9

UPDATE
	ConcurrencyAutoIncrement
SET
	Stamp = ConcurrencyAutoIncrement.Stamp + 1,
	"Value" = CAST($Value AS VARCHAR)
WHERE
	ConcurrencyAutoIncrement.Id = CAST($Id AS INTEGER) AND
	ConcurrencyAutoIncrement.Stamp = CAST($Stamp AS INTEGER)

-- DuckDB

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyAutoIncrement t1

-- DuckDB
DECLARE $Value NVarChar(7) -- String
SET     $Value = 'value 3'
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Stamp  -- Int32
SET     $Stamp = -9

UPDATE
	ConcurrencyAutoIncrement
SET
	Stamp = ConcurrencyAutoIncrement.Stamp + 1,
	"Value" = CAST($Value AS VARCHAR)
WHERE
	ConcurrencyAutoIncrement.Id = CAST($Id AS INTEGER) AND
	ConcurrencyAutoIncrement.Stamp = CAST($Stamp AS INTEGER)

-- DuckDB

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyAutoIncrement t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Stamp  -- Int32
SET     $Stamp = -9

DELETE FROM
	ConcurrencyAutoIncrement obj
WHERE
	obj.Id = CAST($Id AS INTEGER) AND obj.Stamp = CAST($Stamp AS INTEGER)

-- DuckDB

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyAutoIncrement t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Stamp  -- Int32
SET     $Stamp = -8

DELETE FROM
	ConcurrencyAutoIncrement obj
WHERE
	obj.Id = CAST($Id AS INTEGER) AND obj.Stamp = CAST($Stamp AS INTEGER)

-- DuckDB

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyAutoIncrement t1

