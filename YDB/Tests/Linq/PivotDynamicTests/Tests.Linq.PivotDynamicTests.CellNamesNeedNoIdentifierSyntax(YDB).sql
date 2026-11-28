-- YDB Ydb
SELECT
	r.Category as Category,
	SUM(CASE
		WHEN r.`Year` = 2000 THEN r.Amount
		ELSE NULL
	END) as Mens2000,
	SUM(CASE
		WHEN r.`Year` = 2010 THEN r.Amount
		ELSE NULL
	END) as Mens2000_1
FROM
	Sales r
GROUP BY
	r.Category
HAVING
	SUM(CASE
		WHEN r.`Year` = 2000 THEN r.Amount
		ELSE NULL
	END) >= Decimal('5', 22, 9)

