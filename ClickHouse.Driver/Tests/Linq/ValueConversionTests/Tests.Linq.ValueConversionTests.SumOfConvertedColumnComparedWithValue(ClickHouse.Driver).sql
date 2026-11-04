-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Group as Group_1
		FROM
			ConvertedAmount g_1
		GROUP BY
			g_1.Group
		HAVING
			SUM(g_1.Cents) = 700
	) t1

