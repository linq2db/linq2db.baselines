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
WITH CTE_1 (Day_1)
AS
(
	SELECT
		MAX(g_1."Day")
	FROM
		CoarseDateShapesRow g_1
	GROUP BY
		g_1.Id
)
SELECT
	COUNT(*)
FROM
	CTE_1 t1
WHERE
	t1.Day_1 < '2026-06-01 10:00:00.000000'::TIMESTAMP

-- DuckDB
WITH CTE_1 (Day_1, Value_1)
AS
(
	SELECT
		MAX(g_1."Day"),
		MAX(g_1."Value")
	FROM
		CoarseDateShapesRow g_1
	GROUP BY
		g_1.Id
)
SELECT
	COUNT(*)
FROM
	CTE_1 t1
WHERE
	t1.Value_1 < '2026-06-01 10:00:00.500000'::TIMESTAMP

-- DuckDB
WITH CTE_1 (Day_1, Value_1)
AS
(
	SELECT
		MAX(g_1."Day"),
		MAX(g_1."Value")
	FROM
		CoarseDateShapesRow g_1
	GROUP BY
		g_1.Id
)
SELECT
	COUNT(*)
FROM
	CTE_1 t1
WHERE
	t1.Value_1 = '2026-06-01 10:00:00.500000'::TIMESTAMP

