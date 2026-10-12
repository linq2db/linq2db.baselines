-- YDB Ydb
SELECT
	r.Category as Category,
	SUM(CASE
		WHEN r.`Year` = 2010 THEN r.Amount
		ELSE NULL
	END) as Y2010
FROM
	CategorySales r
GROUP BY
	r.Category
HAVING
	SUM(CASE
		WHEN r.`Year` = 2010 THEN r.Amount
		ELSE NULL
	END) >= Decimal('15', 22, 9)

