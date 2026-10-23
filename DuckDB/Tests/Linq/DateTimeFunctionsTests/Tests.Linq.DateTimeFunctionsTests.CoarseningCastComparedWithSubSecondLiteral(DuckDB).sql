-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Value  -- DateTime
SET     $Value = '2026-06-01 10:00:00.000000'::TIMESTAMP
DECLARE $Day  -- Date
SET     $Day = '2026-06-01 00:00:00.000000'::TIMESTAMP
DECLARE $Wide  -- DateTime2
SET     $Wide = '2026-06-01 10:00:00.250000'::TIMESTAMP

INSERT INTO CoarseDateShapesRow
(
	Id,
	"Value",
	"Day",
	Wide
)
VALUES
(
	$Id,
	$Value,
	$Day,
	$Wide
)

-- DuckDB
SELECT
	COUNT(*)
FROM
	CoarseDateShapesRow r
WHERE
	CAST(r.Wide AS TIMESTAMP) < '2026-06-01 10:00:00.500000'::TIMESTAMP

-- DuckDB
SELECT
	COUNT(*)
FROM
	CoarseDateShapesRow r
WHERE
	CAST(r.Wide AS TIMESTAMP) >= '2026-06-01 10:00:00.500000'::TIMESTAMP

-- DuckDB
SELECT
	COUNT(*)
FROM
	CoarseDateShapesRow r
WHERE
	CAST(r.Wide AS TIMESTAMP) = '2026-06-01 10:00:00.500000'::TIMESTAMP

