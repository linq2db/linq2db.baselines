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
	MAX(g_1."Day")
FROM
	CoarseDateShapesRow g_1
GROUP BY
	g_1.Id
UNION ALL
SELECT
	CAST('2026-06-01 10:00:00.000000'::TIMESTAMP AS TIMESTAMP)
FROM
	CoarseDateShapesRow r

-- DuckDB
SELECT
	MAX(g_1."Value")
FROM
	CoarseDateShapesRow g_1
GROUP BY
	g_1.Id
UNION ALL
SELECT
	CAST('2026-06-01 10:00:00.500000'::TIMESTAMP AS TIMESTAMP)
FROM
	CoarseDateShapesRow r

