-- YDB Ydb
SELECT DISTINCT
	CAST(CASE
		WHEN x.Amount > Decimal('0', 35, 1) AND CAST(CAST(CAST(x.Amount AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > x.Amount
			THEN CAST(CAST(x.Amount AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
		WHEN x.Amount < Decimal('0', 35, 1) AND CAST(CAST(CAST(x.Amount AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < x.Amount
			THEN CAST(CAST(x.Amount AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
		ELSE CAST(CAST(x.Amount AS Decimal(35,1)) AS Decimal(35,0))
	END AS Int32) as c1
FROM
	CategorySales x
WHERE
	x.`Year` = 2010 AND x.Category = 'A'u
LIMIT 2

-- YDB Ydb
SELECT
	t1.Key_1 as Key_1,
	Unwrap(CAST('Y2000'u AS Text)) as Name,
	CAST(CASE
		WHEN t1.Y2000 > Decimal('0', 35, 1) AND CAST(CAST(CAST(t1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > t1.Y2000
			THEN CAST(CAST(t1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
		WHEN t1.Y2000 < Decimal('0', 35, 1) AND CAST(CAST(CAST(t1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < t1.Y2000
			THEN CAST(CAST(t1.Y2000 AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
		ELSE CAST(CAST(t1.Y2000 AS Decimal(35,1)) AS Decimal(35,0))
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
			CategorySales g_1
		GROUP BY
			g_1.Category
	) t1
WHERE
	t1.Y2000 IS NOT NULL
UNION ALL
SELECT
	t2.Key_1 as Key_1,
	Unwrap(CAST('Y2010'u AS Text)) as Name,
	CAST(CASE
		WHEN t2.Y2010 > Decimal('0', 35, 1) AND CAST(CAST(CAST(t2.Y2010 AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > t2.Y2010
			THEN CAST(CAST(t2.Y2010 AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
		WHEN t2.Y2010 < Decimal('0', 35, 1) AND CAST(CAST(CAST(t2.Y2010 AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < t2.Y2010
			THEN CAST(CAST(t2.Y2010 AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
		ELSE CAST(CAST(t2.Y2010 AS Decimal(35,1)) AS Decimal(35,0))
	END AS Int32) as Value_1
FROM
	(
		SELECT
			SUM(CASE
				WHEN g_2.`Year` = 2010 THEN g_2.Amount
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

-- YDB Ydb
SELECT
	row_1.Category as Category,
	CAST(CASE
		WHEN SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END) > Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END)
			THEN CAST(CAST(SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
		WHEN SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END) < Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END)
			THEN CAST(CAST(SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
		ELSE CAST(CAST(SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0))
	END AS Int32) as Value_1
FROM
	CategorySales row_1
GROUP BY
	row_1.Category

-- YDB Ydb
SELECT
	row_1.Category as Category,
	CAST(CASE
		WHEN SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END) > Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END)
			THEN CAST(CAST(SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
		WHEN SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END) < Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END)
			THEN CAST(CAST(SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
		ELSE CAST(CAST(SUM(CASE
			WHEN row_1.`Year` = 2020 THEN row_1.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0))
	END AS Int32) as Value_1
FROM
	CategorySales row_1
GROUP BY
	row_1.Category

