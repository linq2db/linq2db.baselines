-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Value Datetime -- DateTime
SET     $Value = Timestamp('2026-06-01T10:00:00.000000Z')
DECLARE $Day Date
SET     $Day = Timestamp('2026-06-01T00:00:00.000000Z')
DECLARE $Wide Timestamp -- DateTime2
SET     $Wide = Timestamp('2026-06-01T10:00:00.000000Z')

INSERT INTO CoarseDateShapesRow
(
	Id,
	`Value`,
	`Day`,
	Wide
)
VALUES
(
	$Id,
	$Value,
	$Day,
	$Wide
)

-- YDB Ydb
$CTE_1 = 	SELECT
		MAX(g_1.`Day`) as Day_1
	FROM
		CoarseDateShapesRow g_1
	GROUP BY
		g_1.Id
;

SELECT
	COUNT(*) as Count_1
FROM
	$CTE_1 t1
WHERE
	t1.Day_1 < Timestamp('2026-06-01T10:00:00.000000Z')

-- YDB Ydb
$CTE_1 = 	SELECT
		MAX(g_1.`Day`) as Day_1,
		MAX(g_1.`Value`) as Value_1
	FROM
		CoarseDateShapesRow g_1
	GROUP BY
		g_1.Id
;

SELECT
	COUNT(*) as Count_1
FROM
	$CTE_1 t1
WHERE
	t1.Value_1 < Timestamp('2026-06-01T10:00:00.500000Z')

-- YDB Ydb
$CTE_1 = 	SELECT
		MAX(g_1.`Day`) as Day_1,
		MAX(g_1.`Value`) as Value_1
	FROM
		CoarseDateShapesRow g_1
	GROUP BY
		g_1.Id
;

SELECT
	COUNT(*) as Count_1
FROM
	$CTE_1 t1
WHERE
	t1.Value_1 = Timestamp('2026-06-01T10:00:00.500000Z')

