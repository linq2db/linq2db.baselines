-- DuckDB

SELECT
	current_database()

-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 10

INSERT INTO TestData.Issue681Table4
(
	"Value"
)
VALUES
(
	$Value
)
RETURNING 
	ID

