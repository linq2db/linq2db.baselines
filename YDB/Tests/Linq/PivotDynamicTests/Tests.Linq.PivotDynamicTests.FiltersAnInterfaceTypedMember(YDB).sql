-- YDB Ydb
SELECT
	r.Category as Category
FROM
	Sales r
GROUP BY
	r.Category
HAVING
	SUM(CASE
		WHEN r.`Year` = 2010 THEN r.Amount
		ELSE NULL
	END) > Decimal('16', 22, 9)

-- YDB Ydb
SELECT
	r.Category as Category
FROM
	Sales r
GROUP BY
	r.Category
HAVING
	SUM(CASE
		WHEN r.`Year` = 2010 THEN r.Amount
		ELSE NULL
	END) > Decimal('16', 22, 9)

