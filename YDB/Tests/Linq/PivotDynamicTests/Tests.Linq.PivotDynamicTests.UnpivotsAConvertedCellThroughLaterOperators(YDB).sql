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
	u_1.Key_1 as Key_1
FROM
	(
		SELECT
			CAST(CASE
				WHEN SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) > Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END)
					THEN CAST(CAST(SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
				WHEN SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) < Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END)
					THEN CAST(CAST(SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
				ELSE CAST(CAST(SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0))
			END AS Int32) as Value_1,
			u.Category as Key_1
		FROM
			CategorySales u
		GROUP BY
			u.Category
		UNION ALL
		SELECT
			CAST(CASE
				WHEN SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) > Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END)
					THEN CAST(CAST(SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
				WHEN SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) < Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END)
					THEN CAST(CAST(SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
				ELSE CAST(CAST(SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0))
			END AS Int32) as Value_1,
			g_1.Category as Key_1
		FROM
			CategorySales g_1
		GROUP BY
			g_1.Category
	) u_1
WHERE
	u_1.Value_1 = $castOfA

-- YDB Ydb
SELECT
	u_1.Value_1 as Value_1
FROM
	(
		SELECT
			Unwrap(CAST('Y2010'u AS Text)) as Name,
			u.Category as Key_1,
			CAST(CASE
				WHEN SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) > Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END)
					THEN CAST(CAST(SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
				WHEN SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) < Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END)
					THEN CAST(CAST(SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
				ELSE CAST(CAST(SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0))
			END AS Int32) as Value_1
		FROM
			CategorySales u
		GROUP BY
			u.Category
		UNION ALL
		SELECT
			Unwrap(CAST('Y2020'u AS Text)) as Name,
			g_1.Category as Key_1,
			CAST(CASE
				WHEN SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) > Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END)
					THEN CAST(CAST(SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
				WHEN SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) < Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END)
					THEN CAST(CAST(SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
				ELSE CAST(CAST(SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0))
			END AS Int32) as Value_1
		FROM
			CategorySales g_1
		GROUP BY
			g_1.Category
	) u_1
WHERE
	u_1.Name = 'Y2010'u
ORDER BY
	u_1.Key_1

-- YDB Ydb
SELECT
	u_1.Value_1 as Value_1
FROM
	(
		SELECT
			Unwrap(CAST('Y2010'u AS Text)) as Name,
			CAST(CASE
				WHEN SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) > Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END)
					THEN CAST(CAST(SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
				WHEN SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) < Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END)
					THEN CAST(CAST(SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
				ELSE CAST(CAST(SUM(CASE
					WHEN u.`Year` = 2010 THEN u.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0))
			END AS Int32) as Value_1
		FROM
			CategorySales u
		GROUP BY
			u.Category
		UNION ALL
		SELECT
			Unwrap(CAST('Y2020'u AS Text)) as Name,
			CAST(CASE
				WHEN SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) > Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) > SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END)
					THEN CAST(CAST(SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) - Decimal('1', 35, 0)
				WHEN SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) < Decimal('0', 35, 1) AND CAST(CAST(CAST(SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) AS Decimal(35,1)) < SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END)
					THEN CAST(CAST(SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0)) + Decimal('1', 35, 0)
				ELSE CAST(CAST(SUM(CASE
					WHEN g_1.`Year` = 2020 THEN g_1.Amount
					ELSE NULL
				END) AS Decimal(35,1)) AS Decimal(35,0))
			END AS Int32) as Value_1
		FROM
			CategorySales g_1
		GROUP BY
			g_1.Category
	) u_1
WHERE
	u_1.Name = 'Y2020'u

