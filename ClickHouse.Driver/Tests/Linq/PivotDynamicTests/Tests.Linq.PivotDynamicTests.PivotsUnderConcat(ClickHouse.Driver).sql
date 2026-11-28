-- ClickHouse.Driver ClickHouse
SELECT
	x.Category,
	sumOrNull(CASE
		WHEN x.Year = 2000 THEN x.Amount
		ELSE NULL
	END) as Y2000,
	sumOrNull(CASE
		WHEN x.Year = 2010 THEN x.Amount
		ELSE NULL
	END) as Y2010
FROM
	Sales x
WHERE
	x.Category = 'A'
GROUP BY
	x.Category
UNION ALL
SELECT
	x_1.Category as Category,
	maxOrNull(CASE
		WHEN x_1.Year = 2000 THEN x_1.Amount
		ELSE NULL
	END) as Y2000,
	maxOrNull(CASE
		WHEN x_1.Year = 2010 THEN x_1.Amount
		ELSE NULL
	END) as Y2010
FROM
	Sales x_1
WHERE
	x_1.Category = 'B'
GROUP BY
	x_1.Category

