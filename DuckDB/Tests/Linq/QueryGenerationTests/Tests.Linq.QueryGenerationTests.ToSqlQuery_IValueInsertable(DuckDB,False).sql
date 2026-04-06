-- DuckDB
DECLARE $value  -- Int32
SET     $value = 123

INSERT INTO TableWithIdentity
(
	"Value"
)
VALUES
(
	CAST($value AS INTEGER)
)

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	TableWithIdentity t1
LIMIT 2

