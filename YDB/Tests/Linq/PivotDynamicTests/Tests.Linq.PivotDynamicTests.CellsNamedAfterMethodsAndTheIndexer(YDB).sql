-- YDB Ydb
SELECT
	r.Category as Category,
	SUM(CASE
		WHEN r.`Year` = 2000 THEN r.Amount
		ELSE NULL
	END) as Item_1,
	SUM(CASE
		WHEN r.`Year` = 2010 THEN r.Amount
		ELSE NULL
	END) as ToString
FROM
	Sales r
GROUP BY
	r.Category
HAVING
	SUM(CASE
		WHEN r.`Year` = 2000 THEN r.Amount
		ELSE NULL
	END) >= Decimal('10', 22, 9)

