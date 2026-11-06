-- DuckDB
DECLARE $Value INTEGER -- Int32
SET     $Value = 10
DECLARE $ID INTEGER -- Int32
SET     $ID = 5

UPDATE
	Issue681Table
SET
	"Value" = $Value
WHERE
	Issue681Table.ID = $ID

