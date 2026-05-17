-- DuckDB

SELECT
	current_database()

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 5
DECLARE $Value  -- Int32
SET     $Value = 10

INSERT INTO TestData.Issue681Table
(
	ID,
	"Value"
)
VALUES
(
	$ID,
	$Value
)

