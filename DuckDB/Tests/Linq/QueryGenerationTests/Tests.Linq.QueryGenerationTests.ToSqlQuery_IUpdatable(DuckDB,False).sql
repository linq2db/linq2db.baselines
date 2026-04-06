-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 1

INSERT INTO TableWithIdentity
(
	"Value"
)
VALUES
(
	CAST($Value AS INTEGER)
)

-- DuckDB
DECLARE $newValue  -- Int32
SET     $newValue = 123

UPDATE
	TableWithIdentity
SET
	"Value" = CAST($newValue AS INTEGER)

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	TableWithIdentity t1
LIMIT 2

