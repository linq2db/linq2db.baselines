-- YDB Ydb
SELECT
	x.Category as Category,
	SUM(CASE
		WHEN x.`Year` = 2000 THEN x.Amount
		ELSE NULL
	END) as Y2000,
	SUM(CASE
		WHEN x.`Year` = 2010 THEN x.Amount
		ELSE NULL
	END) as Y2010
FROM
	Sales x
GROUP BY
	x.Category

