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
	x.Category
FROM
	CategorySales x
WHERE
	x.Year = 2010 AND toInt32(x.Amount) = 20

-- ClickHouse.Driver ClickHouse
SELECT
	u_1.Key_1
FROM
	(
		SELECT
			toInt32(sumOrNull(CASE
				WHEN u.Year = 2010 THEN u.Amount
				ELSE NULL
			END)) as Value_1,
			u.Category as Key_1
		FROM
			CategorySales u
		GROUP BY
			u.Category
		UNION ALL
		SELECT
			toInt32(sumOrNull(CASE
				WHEN g_1.Year = 2020 THEN g_1.Amount
				ELSE NULL
			END)) as Value_1,
			g_1.Category as Key_1
		FROM
			CategorySales g_1
		GROUP BY
			g_1.Category
	) u_1
WHERE
	u_1.Value_1 = 20

-- ClickHouse.Driver ClickHouse
SELECT
	u_1.Value_1
FROM
	(
		SELECT
			toString('Y2010') as Name,
			u.Category as Key_1,
			toInt32(sumOrNull(CASE
				WHEN u.Year = 2010 THEN u.Amount
				ELSE NULL
			END)) as Value_1
		FROM
			CategorySales u
		GROUP BY
			u.Category
		UNION ALL
		SELECT
			toString('Y2020') as Name,
			g_1.Category as Key_1,
			toInt32(sumOrNull(CASE
				WHEN g_1.Year = 2020 THEN g_1.Amount
				ELSE NULL
			END)) as Value_1
		FROM
			CategorySales g_1
		GROUP BY
			g_1.Category
	) u_1
WHERE
	u_1.Name = 'Y2010'
ORDER BY
	u_1.Key_1

-- ClickHouse.Driver ClickHouse
SELECT
	u_1.Value_1
FROM
	(
		SELECT
			toString('Y2010') as Name,
			toInt32(sumOrNull(CASE
				WHEN u.Year = 2010 THEN u.Amount
				ELSE NULL
			END)) as Value_1
		FROM
			CategorySales u
		GROUP BY
			u.Category
		UNION ALL
		SELECT
			toString('Y2020') as Name,
			toInt32(sumOrNull(CASE
				WHEN g_1.Year = 2020 THEN g_1.Amount
				ELSE NULL
			END)) as Value_1
		FROM
			CategorySales g_1
		GROUP BY
			g_1.Category
	) u_1
WHERE
	u_1.Name = 'Y2020'

