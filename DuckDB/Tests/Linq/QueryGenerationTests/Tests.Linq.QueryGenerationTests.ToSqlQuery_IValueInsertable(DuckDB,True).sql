-- DuckDB

INSERT INTO TableWithIdentity
(
	"Value"
)
VALUES
(
	123
)

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	TableWithIdentity t1
LIMIT 2

