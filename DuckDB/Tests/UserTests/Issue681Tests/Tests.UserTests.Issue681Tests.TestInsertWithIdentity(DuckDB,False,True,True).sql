-- DuckDB

SELECT
	current_database()

-- DuckDB

SELECT
	current_schema()
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 10

INSERT INTO TestData.main.Issue681Table4
(
	"Value"
)
VALUES
(
	$Value
)
RETURNING 
	ID

