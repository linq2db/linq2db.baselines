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
DECLARE $ID  -- Int32
SET     $ID = 5
DECLARE $Value  -- Int32
SET     $Value = 10

INSERT INTO TestData.main.Issue681Table AS t1
(
	ID,
	"Value"
)
VALUES
(
	$ID,
	$Value
)
ON CONFLICT (ID) DO UPDATE SET
	"Value" = $Value

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 5
DECLARE $Value  -- Int32
SET     $Value = 10

INSERT INTO TestData.main.Issue681Table AS t1
(
	ID,
	"Value"
)
VALUES
(
	$ID,
	$Value
)
ON CONFLICT (ID) DO UPDATE SET
	"Value" = $Value

