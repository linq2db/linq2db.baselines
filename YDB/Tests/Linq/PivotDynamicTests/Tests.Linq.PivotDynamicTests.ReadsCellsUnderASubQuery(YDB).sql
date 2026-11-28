-- YDB Ydb
SELECT
	r.Category as Category
FROM
	(
		SELECT
			SUM(CASE
				WHEN g_1.`Year` = 2010 THEN g_1.Amount
				ELSE NULL
			END) as Y2010,
			g_1.Category as Category
		FROM
			Sales g_1
		GROUP BY
			g_1.Category
	) r
WHERE
	r.Y2010 > Decimal('16', 22, 9)

-- YDB Ydb
SELECT
	r.Category as Category
FROM
	(
		SELECT
			SUM(CASE
				WHEN g_1.`Year` = 2010 THEN g_1.Amount
				ELSE NULL
			END) as Y2010,
			g_1.Category as Category
		FROM
			Sales g_1
		GROUP BY
			g_1.Category
	) r
WHERE
	r.Y2010 > Decimal('16', 22, 9)

-- YDB Ydb
SELECT
	r.Category as Category
FROM
	(
		SELECT
			SUM(CASE
				WHEN g_1.`Year` = 2010 THEN g_1.Amount
				ELSE NULL
			END) as Y2010,
			g_1.Category as Category
		FROM
			Sales g_1
		GROUP BY
			g_1.Category
	) r
WHERE
	r.Y2010 > Decimal('16', 22, 9)

-- YDB Ydb
SELECT
	row_1.Key_1 as Key_1,
	CAST(CASE
		WHEN row_1.Y2000 > Decimal('0', 35, 1) AND CAST(CAST(CAST(row_1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > row_1.Y2000
			THEN CAST(CAST(row_1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
		WHEN row_1.Y2000 < Decimal('0', 35, 1) AND CAST(CAST(CAST(row_1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < row_1.Y2000
			THEN CAST(CAST(row_1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
		ELSE CAST(CAST(row_1.Y2000 AS Decimal(35,1)) AS Decimal(35,0))
	END AS Int32) as Value_1
FROM
	(
		SELECT
			SUM(CASE
				WHEN g_1.`Year` = 2000 THEN g_1.Amount
				ELSE NULL
			END) as Y2000,
			g_1.Category as Key_1
		FROM
			Sales g_1
		GROUP BY
			g_1.Category
	) row_1
WHERE
	row_1.Y2000 IS NOT NULL

-- YDB Ydb
SELECT
	u.Key_1 as Key_1
FROM
	(
		SELECT
			CAST(CASE
				WHEN row_1.Y2000 > Decimal('0', 35, 1) AND CAST(CAST(CAST(row_1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > row_1.Y2000
					THEN CAST(CAST(row_1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
				WHEN row_1.Y2000 < Decimal('0', 35, 1) AND CAST(CAST(CAST(row_1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < row_1.Y2000
					THEN CAST(CAST(row_1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
				ELSE CAST(CAST(row_1.Y2000 AS Decimal(35,1)) AS Decimal(35,0))
			END AS Int32) as Value_1,
			row_1.Key_1 as Key_1
		FROM
			(
				SELECT
					SUM(CASE
						WHEN g_1.`Year` = 2000 THEN g_1.Amount
						ELSE NULL
					END) as Y2000,
					g_1.Category as Key_1
				FROM
					Sales g_1
				GROUP BY
					g_1.Category
			) row_1
		WHERE
			row_1.Y2000 IS NOT NULL
	) u
WHERE
	u.Value_1 = 10

