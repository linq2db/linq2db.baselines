-- DuckDB

SELECT
	current_database()

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 5

DELETE FROM
	TestData.Issue681Table t1
WHERE
	t1.ID = $ID

