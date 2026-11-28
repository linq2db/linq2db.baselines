-- YDB Ydb
SELECT
	u.Key_1 as Key_1
FROM
	(
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
	u.Y2000 IS NOT NULL AND CAST(CASE
		WHEN u.Y2000 > Decimal('0', 35, 1) AND CAST(CAST(CAST(u.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > u.Y2000
			THEN CAST(CAST(u.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
		WHEN u.Y2000 < Decimal('0', 35, 1) AND CAST(CAST(CAST(u.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < u.Y2000
			THEN CAST(CAST(u.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
		ELSE CAST(CAST(u.Y2000 AS Decimal(35,1)) AS Decimal(35,0))
	END AS Int32) = 10

