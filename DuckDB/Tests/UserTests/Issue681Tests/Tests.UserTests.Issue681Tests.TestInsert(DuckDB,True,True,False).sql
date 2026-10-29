-- DuckDB
SELECT
	current_database()

-- DuckDB
DECLARE $ID INTEGER -- Int32
SET     $ID = 5
DECLARE $Value INTEGER -- Int32
SET     $Value = 10

INSERT INTO memory.Issue681Table
(
	ID,
	"Value"
)
VALUES
(
	$ID,
	$Value
)

