-- DuckDB

SELECT
	current_schema()
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 5

DELETE FROM
	main.Issue681Table t1
WHERE
	t1.ID = $ID

