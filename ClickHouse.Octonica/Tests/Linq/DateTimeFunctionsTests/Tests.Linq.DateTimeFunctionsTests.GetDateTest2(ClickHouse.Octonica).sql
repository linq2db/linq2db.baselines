BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	g_2.c1,
	COUNT(*)
FROM
	(
		SELECT
			toDate(now()) as c1
		FROM
			Parent g_1
				INNER JOIN Child s ON g_1.ParentID = s.ParentID
		WHERE
			g_1.Value1 > 0
	) g_2
GROUP BY
	g_2.c1
LIMIT 5

