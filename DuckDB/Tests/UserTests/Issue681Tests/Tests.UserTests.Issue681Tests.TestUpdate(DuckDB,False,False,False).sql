-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 10
DECLARE $ID  -- Int32
SET     $ID = 5

UPDATE
	Issue681Table
SET
	"Value" = CAST($Value AS INTEGER)
WHERE
	Issue681Table.ID = CAST($ID AS INTEGER)

