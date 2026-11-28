-- YDB Ydb
SELECT
	c_1.Category as Category,
	CAST(CASE
		WHEN u.Y2000 > Decimal('0', 35, 1) AND CAST(CAST(CAST(u.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > u.Y2000
			THEN CAST(CAST(u.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
		WHEN u.Y2000 < Decimal('0', 35, 1) AND CAST(CAST(CAST(u.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < u.Y2000
			THEN CAST(CAST(u.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
		ELSE CAST(CAST(u.Y2000 AS Decimal(35,1)) AS Decimal(35,0))
	END AS Int32) as Value_1
FROM
	(
		SELECT DISTINCT
			x.Category as Category
		FROM
			CategorySales x
	) c_1
		CROSS JOIN (
			SELECT
				SUM(CASE
					WHEN g_1.`Year` = 2000 THEN g_1.Amount
					ELSE NULL
				END) as Y2000,
				g_1.Category as Key_1
			FROM
				CategorySales g_1
			GROUP BY
				g_1.Category
		) u
WHERE
	u.Y2000 IS NOT NULL AND (u.Key_1 = c_1.Category OR u.Key_1 IS NULL AND c_1.Category IS NULL)

-- YDB Ydb
SELECT
	CAST(CASE
		WHEN t1.Y2000 > Decimal('0', 35, 1) AND CAST(CAST(CAST(t1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > t1.Y2000
			THEN CAST(CAST(t1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
		WHEN t1.Y2000 < Decimal('0', 35, 1) AND CAST(CAST(CAST(t1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < t1.Y2000
			THEN CAST(CAST(t1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
		ELSE CAST(CAST(t1.Y2000 AS Decimal(35,1)) AS Decimal(35,0))
	END AS Int32) as c1
FROM
	(
		SELECT DISTINCT
			x.Category as Category
		FROM
			CategorySales x
	) c_1
		CROSS JOIN (
			SELECT
				SUM(CASE
					WHEN g_1.`Year` = 2000 THEN g_1.Amount
					ELSE NULL
				END) as Y2000,
				g_1.Category as Key_1
			FROM
				CategorySales g_1
			GROUP BY
				g_1.Category
		) t1
WHERE
	t1.Y2000 IS NOT NULL AND (t1.Key_1 = c_1.Category OR t1.Key_1 IS NULL AND c_1.Category IS NULL)

