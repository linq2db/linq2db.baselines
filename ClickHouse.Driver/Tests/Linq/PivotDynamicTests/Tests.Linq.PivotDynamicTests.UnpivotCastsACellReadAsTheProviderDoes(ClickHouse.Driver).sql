-- ClickHouse.Driver ClickHouse
SELECT DISTINCT
	toInt32(x.Amount)
FROM
	CategorySales x
WHERE
	x.Year = 2010 AND x.Category = 'A'
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Key_1,
	toString('Y2000') as Name,
	toInt32(t1.Y2000) as Value_1
FROM
	(
		SELECT
			sumOrNull(CASE
				WHEN g_1.Year = 2000 THEN g_1.Amount
				ELSE NULL
			END) as Y2000,
			g_1.Category as Key_1
		FROM
			CategorySales g_1
		GROUP BY
			g_1.Category
	) t1
WHERE
	t1.Y2000 IS NOT NULL
UNION ALL
SELECT
	t2.Key_1 as Key_1,
	toString('Y2010') as Name,
	toInt32(t2.Y2010) as Value_1
FROM
	(
		SELECT
			sumOrNull(CASE
				WHEN g_2.Year = 2010 THEN g_2.Amount
				ELSE NULL
			END) as Y2010,
			g_2.Category as Key_1
		FROM
			CategorySales g_2
		GROUP BY
			g_2.Category
	) t2
WHERE
	t2.Y2010 IS NOT NULL

-- ClickHouse.Driver ClickHouse
SELECT
	row_1.Category,
	toInt32(sumOrNull(CASE
		WHEN row_1.Year = 2020 THEN row_1.Amount
		ELSE NULL
	END))
FROM
	CategorySales row_1
GROUP BY
	row_1.Category

-- ClickHouse.Driver ClickHouse
SELECT
	row_1.Category,
	toInt32(sumOrNull(CASE
		WHEN row_1.Year = 2020 THEN row_1.Amount
		ELSE NULL
	END))
FROM
	CategorySales row_1
GROUP BY
	row_1.Category

