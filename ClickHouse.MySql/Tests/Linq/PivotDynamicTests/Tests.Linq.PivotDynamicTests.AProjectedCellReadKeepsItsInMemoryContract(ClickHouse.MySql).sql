-- ClickHouse.MySql ClickHouse
SELECT
	sumOrNull(CASE
		WHEN r.Year = 2000 THEN r.Amount
		ELSE NULL
	END),
	sumOrNull(CASE
		WHEN r.Year = 2010 THEN r.Amount
		ELSE NULL
	END),
	r.Category
FROM
	CategorySales r
GROUP BY
	r.Category

