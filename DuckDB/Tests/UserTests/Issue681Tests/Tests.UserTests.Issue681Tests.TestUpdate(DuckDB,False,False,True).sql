-- DuckDB

SELECT
	current_schema()
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 10
DECLARE $ID  -- Int32
SET     $ID = 5

UPDATE
	main.Issue681Table
SET
	"Value" = $Value
WHERE
	main.Issue681Table.ID = $ID

