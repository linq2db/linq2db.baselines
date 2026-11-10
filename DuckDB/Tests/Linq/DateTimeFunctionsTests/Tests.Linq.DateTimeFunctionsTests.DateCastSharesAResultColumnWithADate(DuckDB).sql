-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Value TIMESTAMP -- DateTime
SET     $Value = '2026-06-01 10:00:00.000000'::TIMESTAMP
DECLARE $Day DATE -- Date
SET     $Day = '2026-06-01 00:00:00.000000'::TIMESTAMP
DECLARE $Wide TIMESTAMP -- DateTime2
SET     $Wide = '2026-06-01 10:00:00.000000'::TIMESTAMP

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
	CAST(r."Value" AS DATE)
FROM
	CoarseDateShapesRow r
UNION ALL
SELECT
	r_1."Day"
FROM
	CoarseDateShapesRow r_1

-- DuckDB
SELECT
	CASE
		WHEN r.Id > 0 THEN CAST(r."Value" AS DATE)
		ELSE CAST(r."Value" AS DATE)
	END
FROM
	CoarseDateShapesRow r

