-- ClickHouse.Driver ClickHouse
SELECT
	r.Category
FROM
	CategorySales r
GROUP BY
	r.Category
HAVING
	sumOrNull(CASE
		WHEN r.Year = 2000 THEN r.Amount
		ELSE NULL
	END) > toDecimal128('12', 10)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Category
FROM
	CategorySales r
GROUP BY
	r.Category
HAVING
	sumOrNull(CASE
		WHEN r.Year = 2010 THEN r.Amount
		ELSE NULL
	END) > toDecimal128('12', 10)

