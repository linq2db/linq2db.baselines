-- Informix.DB2 Informix
SELECT
	r.Category
FROM
	CategorySales r
GROUP BY
	r.Category
HAVING
	SUM(CASE
		WHEN r."Year" = 2010 THEN r.Amount
		ELSE NULL
	END) > 16

-- Informix.DB2 Informix
SELECT
	r.Key_1,
	r.Y2000,
	r.Y2010
FROM
	(
		SELECT
			SUM(CASE
				WHEN g_1."Year" = 2000 THEN g_1.Amount
				ELSE NULL
			END) as Y2000,
			g_1.Category as Key_1,
			SUM(CASE
				WHEN g_1."Year" = 2010 THEN g_1.Amount
				ELSE NULL
			END) as Y2010
		FROM
			CategorySales g_1
		GROUP BY
			g_1.Category
	) r
ORDER BY
	r.Y2000

