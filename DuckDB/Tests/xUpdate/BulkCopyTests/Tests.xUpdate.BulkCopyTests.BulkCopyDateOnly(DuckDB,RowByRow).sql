-- DuckDB
DECLARE $Date  -- Date
SET     $Date = '2021-01-01'::DATE

INSERT INTO DateOnlyTable
(
	"Date"
)
VALUES
(
	$Date
)

-- DuckDB

SELECT
	t1."Date"
FROM
	DateOnlyTable t1
LIMIT 2

