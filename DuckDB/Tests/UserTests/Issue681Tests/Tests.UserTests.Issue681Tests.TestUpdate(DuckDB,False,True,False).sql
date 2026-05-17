-- DuckDB

SELECT
	current_database()

-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 10
DECLARE $ID  -- Int32
SET     $ID = 5

UPDATE
	TestData.Issue681Table
SET
	"Value" = $Value
WHERE
	TestData.Issue681Table.ID = $ID

