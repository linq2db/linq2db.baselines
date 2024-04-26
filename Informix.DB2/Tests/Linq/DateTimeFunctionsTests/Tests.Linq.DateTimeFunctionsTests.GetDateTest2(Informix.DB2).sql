BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 5
	g_2.Date_1,
	COUNT(*)
FROM
	(
		SELECT
			Extend(CURRENT, Year to Day) as Date_1
		FROM
			Parent g_1
				INNER JOIN Child s ON g_1.ParentID = s.ParentID
		WHERE
			g_1.Value1 > 0
	) g_2
GROUP BY
	g_2.Date_1

