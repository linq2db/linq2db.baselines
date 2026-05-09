-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 1

INSERT INTO TableWithIdentity
(
	"Value"
)
VALUES
(
	$Value
)

-- DuckDB
DECLARE $newValue  -- Int32
SET     $newValue = 123

UPDATE
	TableWithIdentity
SET
	Id = 492,
	"Value" = $newValue

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	TableWithIdentity t1
LIMIT 2

