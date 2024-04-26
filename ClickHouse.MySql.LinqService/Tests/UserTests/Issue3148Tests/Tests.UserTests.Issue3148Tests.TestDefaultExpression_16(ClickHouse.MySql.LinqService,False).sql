BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	g_2.LastName,
	g_2.c1,
	g_2.c3,
	g_2.c2
FROM
	(
		SELECT
			g_1.LastName as LastName,
			0 as c1,
			toString(NULL) as c2,
			toString(NULL) as c3
		FROM
			Person g_1
	) g_2
GROUP BY
	g_2.LastName,
	g_2.c1,
	g_2.c2,
	g_2.c3

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	g_2.LastName,
	g_2.c1,
	g_2.c3,
	g_2.c2
FROM
	(
		SELECT
			g_1.LastName as LastName,
			0 as c1,
			toString(NULL) as c2,
			toString(NULL) as c3
		FROM
			Person g_1
	) g_2
GROUP BY
	g_2.LastName,
	g_2.c1,
	g_2.c2,
	g_2.c3

