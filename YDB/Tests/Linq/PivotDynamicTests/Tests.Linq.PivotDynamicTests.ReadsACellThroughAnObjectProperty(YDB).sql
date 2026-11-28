-- YDB Ydb
SELECT
	r.Category as Category,
	SUM(CASE
		WHEN r.`Year` = 2010 THEN r.Amount
		ELSE NULL
	END) as Y2010
FROM
	Sales r
GROUP BY
	r.Category

-- YDB Ydb
SELECT
	r.Category as Category,
	SUM(CASE
		WHEN r.`Year` = 2010 THEN r.Amount
		ELSE NULL
	END) as Y2010
FROM
	Sales r
GROUP BY
	r.Category

-- YDB Ydb
SELECT
	r.Category as Category,
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
	END AS Int32) as Value_1
FROM
	Sales r
GROUP BY
	r.Category

