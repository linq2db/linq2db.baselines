-- DuckDB
SELECT
	current_database()

-- DuckDB
DECLARE $Value INTEGER -- Int32
SET     $Value = 10

INSERT INTO memory.Issue681Table4
(
	"Value"
)
VALUES
(
	$Value
)
RETURNING 
	ID

