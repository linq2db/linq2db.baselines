-- ClickHouse.MySql ClickHouse
SELECT
	r_1.Key_1,
	r_1.Y2010
FROM
	(
		SELECT
			sumOrNull(CASE
				WHEN r.Year = 2010 THEN r.Amount
				ELSE NULL
			END) as Y2010,
			r.Category as Key_1
		FROM
			CategorySales r
		GROUP BY
			r.Category
		HAVING
			sumOrNull(CASE
				WHEN r.Year = 2010 THEN r.Amount
				ELSE NULL
			END) >= toDecimal128('15', 10)
	) r_1
ORDER BY
	r_1.Y2010 DESC

