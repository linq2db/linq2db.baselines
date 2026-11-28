-- YDB Ydb
SELECT
	SUM(CASE
		WHEN r.`Year` = 2000 THEN r.Amount
		ELSE NULL
	END) as Y2000,
	SUM(CASE
		WHEN r.`Year` = 2010 THEN r.Amount
		ELSE NULL
	END) as Y2010,
	r.Category as Category
FROM
	CategorySales r
GROUP BY
	r.Category

