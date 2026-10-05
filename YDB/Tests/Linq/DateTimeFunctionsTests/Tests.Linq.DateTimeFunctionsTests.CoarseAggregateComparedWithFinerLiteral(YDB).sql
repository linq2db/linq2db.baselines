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
SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.`Day`) < Timestamp('2026-06-01T10:00:00.000000Z')
	) t1

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MIN(g_1.`Day`) >= Timestamp('2026-06-01T10:00:00.000000Z')
	) t1

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.`Value`) < Timestamp('2026-06-01T10:00:00.500000Z')
	) t1

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.`Value`) = Timestamp('2026-06-01T10:00:00.500000Z')
	) t1

