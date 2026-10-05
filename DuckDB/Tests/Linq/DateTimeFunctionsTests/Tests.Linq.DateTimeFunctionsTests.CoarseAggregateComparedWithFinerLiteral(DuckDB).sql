-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Value  -- DateTime
SET     $Value = '2026-06-01 10:00:00.000000'::TIMESTAMP
DECLARE $Day  -- Date
SET     $Day = '2026-06-01 00:00:00.000000'::TIMESTAMP
DECLARE $Wide  -- DateTime2
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
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1."Day") < '2026-06-01 10:00:00.000000'::TIMESTAMP
	) t1

-- DuckDB
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MIN(g_1."Day") >= '2026-06-01 10:00:00.000000'::TIMESTAMP
	) t1

-- DuckDB
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1."Value") < '2026-06-01 10:00:00.500000'::TIMESTAMP
	) t1

-- DuckDB
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1."Value") = '2026-06-01 10:00:00.500000'::TIMESTAMP
	) t1

