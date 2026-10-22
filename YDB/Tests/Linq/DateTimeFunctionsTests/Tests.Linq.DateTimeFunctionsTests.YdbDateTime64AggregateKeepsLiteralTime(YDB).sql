-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			YdbDateTime64Row g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.`Value`) < Timestamp('2026-06-01T10:00:00.500000Z')
	) t1

-- YDB Ydb
DECLARE $Ids0_1 Timestamp -- DateTime2
SET     $Ids0_1 = Timestamp('2026-06-01T10:00:00.500000Z')

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			MAX(g_1.`Value`) as Max_1
		FROM
			YdbDateTime64Row g_1
		GROUP BY
			g_1.Id
	) t1
WHERE
	t1.Max_1 IN ($Ids0_1)

-- YDB Ydb
SELECT
	MAX(g_1.`Value`) as Max_1
FROM
	YdbDateTime64Row g_1
GROUP BY
	g_1.Id
UNION ALL
SELECT
	Unwrap(CAST(Timestamp('2026-06-01T10:00:00.500000Z') AS Timestamp)) as Max_1
FROM
	YdbDateTime64Row r

