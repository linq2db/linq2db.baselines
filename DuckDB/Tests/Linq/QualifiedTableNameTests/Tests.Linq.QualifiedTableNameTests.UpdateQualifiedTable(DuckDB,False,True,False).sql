-- DuckDB
SELECT
	current_database()

-- DuckDB
DECLARE $Value INTEGER -- Int32
SET     $Value = 10
DECLARE $ID INTEGER -- Int32
SET     $ID = 5

UPDATE
	memory.QualifiedNameTable
SET
	"Value" = $Value
WHERE
	memory.QualifiedNameTable.ID = $ID

