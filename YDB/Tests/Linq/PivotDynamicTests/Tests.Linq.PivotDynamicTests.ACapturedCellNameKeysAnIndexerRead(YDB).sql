-- YDB Ydb
SELECT
	r.Category as Category
FROM
	CategorySales r
GROUP BY
	r.Category
HAVING
	SUM(CASE
		WHEN r.`Year` = 2000 THEN r.Amount
		ELSE NULL
	END) > Decimal('12', 22, 9)

-- YDB Ydb
SELECT
	r.Category as Category
FROM
	CategorySales r
GROUP BY
	r.Category
HAVING
	SUM(CASE
		WHEN r.`Year` = 2010 THEN r.Amount
		ELSE NULL
	END) > Decimal('12', 22, 9)

