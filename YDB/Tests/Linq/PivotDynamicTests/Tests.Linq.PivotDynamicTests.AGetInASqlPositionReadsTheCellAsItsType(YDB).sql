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
	x.`Year` = 2010

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
DECLARE castOfA Int32
SET     castOfA = 20

SELECT
	x.Category as Category
FROM
	CategorySales x
WHERE
	x.`Year` = 2010 AND CAST(CASE
		WHEN x.Amount > Decimal('0', 35, 1) AND CAST(CAST(CAST(x.Amount AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > x.Amount
			THEN CAST(CAST(x.Amount AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
		WHEN x.Amount < Decimal('0', 35, 1) AND CAST(CAST(CAST(x.Amount AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < x.Amount
			THEN CAST(CAST(x.Amount AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
		ELSE CAST(CAST(x.Amount AS Decimal(35,1)) AS Decimal(35,0))
	END AS Int32) = $castOfA

-- YDB Ydb
DECLARE castOfA Int32
SET     castOfA = 20

SELECT
	r.Category as Category
FROM
	CategorySales r
GROUP BY
	r.Category
HAVING
	CAST(CASE
		WHEN SUM(CASE
			WHEN r.`Year` = 2010 THEN r.Amount
			ELSE NULL
		END) > Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
			WHEN r.`Year` = 2010 THEN r.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > SUM(CASE
			WHEN r.`Year` = 2010 THEN r.Amount
			ELSE NULL
		END)
			THEN CAST(CAST(SUM(CASE
			WHEN r.`Year` = 2010 THEN r.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
		WHEN SUM(CASE
			WHEN r.`Year` = 2010 THEN r.Amount
			ELSE NULL
		END) < Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
			WHEN r.`Year` = 2010 THEN r.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < SUM(CASE
			WHEN r.`Year` = 2010 THEN r.Amount
			ELSE NULL
		END)
			THEN CAST(CAST(SUM(CASE
			WHEN r.`Year` = 2010 THEN r.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
		ELSE CAST(CAST(SUM(CASE
			WHEN r.`Year` = 2010 THEN r.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0))
	END AS Int32) = $castOfA

-- YDB Ydb
SELECT DISTINCT
	CAST(CASE
		WHEN SUM(CASE
			WHEN g_1.`Year` = 2010 THEN g_1.Amount
			ELSE NULL
		END) > Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
			WHEN g_1.`Year` = 2010 THEN g_1.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > SUM(CASE
			WHEN g_1.`Year` = 2010 THEN g_1.Amount
			ELSE NULL
		END)
			THEN CAST(CAST(SUM(CASE
			WHEN g_1.`Year` = 2010 THEN g_1.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
		WHEN SUM(CASE
			WHEN g_1.`Year` = 2010 THEN g_1.Amount
			ELSE NULL
		END) < Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
			WHEN g_1.`Year` = 2010 THEN g_1.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < SUM(CASE
			WHEN g_1.`Year` = 2010 THEN g_1.Amount
			ELSE NULL
		END)
			THEN CAST(CAST(SUM(CASE
			WHEN g_1.`Year` = 2010 THEN g_1.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
		ELSE CAST(CAST(SUM(CASE
			WHEN g_1.`Year` = 2010 THEN g_1.Amount
			ELSE NULL
		END) AS Decimal(35,1)) AS Decimal(35,0))
	END AS Int32) as c1
FROM
	CategorySales g_1
GROUP BY
	g_1.Category

-- YDB Ydb
SELECT
	SUM(CASE
		WHEN r.`Year` = 2000 THEN r.Amount
		ELSE NULL
	END) as Y2000,
	SUM(CASE
		WHEN r.`Year` = 2010 THEN r.Amount
		ELSE NULL
	END) as Y2010
FROM
	CategorySales r
GROUP BY
	r.Category

