BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.A,
	t1.B
FROM
	(
		SELECT
			0 as A,
			g_1.ParentID as B
		FROM
			Parent g_1
		GROUP BY
			g_1.ParentID
	) t1
ORDER BY
	t1.A

