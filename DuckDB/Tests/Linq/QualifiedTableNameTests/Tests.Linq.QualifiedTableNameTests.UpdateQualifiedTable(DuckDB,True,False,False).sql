-- DuckDB
DECLARE $Value INTEGER -- Int32
SET     $Value = 10
DECLARE $ID INTEGER -- Int32
SET     $ID = 5

UPDATE
	QualifiedNameTable
SET
	"Value" = $Value
WHERE
	QualifiedNameTable.ID = $ID

