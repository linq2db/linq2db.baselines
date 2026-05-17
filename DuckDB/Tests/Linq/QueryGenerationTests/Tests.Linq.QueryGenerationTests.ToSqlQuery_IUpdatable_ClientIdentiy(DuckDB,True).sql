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

UPDATE
	TableWithIdentity
SET
	Id = 492,
	"Value" = 123

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	TableWithIdentity t1
LIMIT 2

