-- DuckDB
SELECT
	current_database()

-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 10
DECLARE $ID  -- Int32
SET     $ID = 5

UPDATE
	memory.Issue681Table
SET
	"Value" = $Value
WHERE
	memory.Issue681Table.ID = $ID

