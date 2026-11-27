-- DuckDB
SELECT
	current_schema()
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $Value INTEGER -- Int32
SET     $Value = 10

INSERT INTO main.QualifiedIdTable
(
	"Value"
)
VALUES
(
	$Value
)
RETURNING 
	ID

