BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	g_2.LastName,
	g_2.f1,
	g_2.f3,
	g_2.f2
FROM
	(
		SELECT
			g_1.LastName as LastName,
			0 as f1,
			toString(NULL) as f2,
			toString(NULL) as f3
		FROM
			Person g_1
	) g_2
GROUP BY
	g_2.LastName,
	g_2.f1,
	g_2.f2,
	g_2.f3

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	g_2.LastName,
	g_2.f1,
	g_2.f3,
	g_2.f2
FROM
	(
		SELECT
			g_1.LastName as LastName,
			0 as f1,
			toString(NULL) as f2,
			toString(NULL) as f3
		FROM
			Person g_1
	) g_2
GROUP BY
	g_2.LastName,
	g_2.f1,
	g_2.f2,
	g_2.f3

