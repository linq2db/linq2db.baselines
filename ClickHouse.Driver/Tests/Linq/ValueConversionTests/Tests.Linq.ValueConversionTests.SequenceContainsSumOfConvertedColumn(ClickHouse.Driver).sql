-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	ConvertedAmount t
WHERE
	700 IN (
		SELECT
			SUM(g_1.Cents)
		FROM
			ConvertedAmount g_1
		GROUP BY
			g_1.Group
	)

