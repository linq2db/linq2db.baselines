-- DuckDB
SELECT
	current_schema()
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $Value INTEGER -- Int32
SET     $Value = 10
DECLARE $ID INTEGER -- Int32
SET     $ID = 5

UPDATE
	main.QualifiedNameTable
SET
	"Value" = $Value
WHERE
	main.QualifiedNameTable.ID = $ID

