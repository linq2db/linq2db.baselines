-- ClickHouse.MySql ClickHouse

SELECT
	t1.DetailId,
	t1.MasterId,
	t1.DetailValue
FROM
	DetailClass t1

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id1 as Key_1
		FROM
			MasterManyId g_1
		LIMIT 11
	) g_2
GROUP BY
	g_2.Key_1

