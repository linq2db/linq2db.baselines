-- YDB Ydb
DECLARE $Ids0_1 Timestamp -- DateTime2
SET     $Ids0_1 = Timestamp('2026-06-01T00:00:00.000000Z')

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			MAX(g_1.`Day`) as Max_1
		FROM
			DayRow g_1
		GROUP BY
			g_1.Id
	) t1
WHERE
	t1.Max_1 IN ($Ids0_1)

-- YDB Ydb
DECLARE $Ids0_1 Timestamp -- DateTime2
SET     $Ids0_1 = Timestamp('2026-06-01T10:00:00.000000Z')

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			MAX(g_1.`Day`) as Max_1
		FROM
			DayRow g_1
		GROUP BY
			g_1.Id
	) t1
WHERE
	t1.Max_1 IN ($Ids0_1)

