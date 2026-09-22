-- ClickHouse.MySql ClickHouse
SELECT
	r.Category,
	sumOrNull(CASE
		WHEN r.Year = 2010 THEN r.Amount
		ELSE NULL
	END)
FROM
	CategorySales r
GROUP BY
	r.Category
HAVING
	sumOrNull(CASE
		WHEN r.Year = 2010 THEN r.Amount
		ELSE NULL
	END) >= toDecimal128('15', 10)

