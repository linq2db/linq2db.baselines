-- Informix.DB2 Informix
SELECT FIRST 2 DISTINCT
	x.Amount::Int
FROM
	CategorySales x
WHERE
	x."Year" = 2010 AND x.Category = 'A'

-- Informix.DB2 Informix
DECLARE @castOfA Integer(4) -- Int32
SET     @castOfA = 20

SELECT
	x.Category
FROM
	CategorySales x
WHERE
	x."Year" = 2010 AND x.Amount::Int = @castOfA

-- Informix.DB2 Informix
DECLARE @castOfA Integer(4) -- Int32
SET     @castOfA = 20

SELECT
	u_1.Key_1
FROM
	(
		SELECT
			SUM(CASE
				WHEN u."Year" = 2010 THEN u.Amount
				ELSE NULL
			END)::Int as Value_1,
			u.Category as Key_1
		FROM
			CategorySales u
		GROUP BY
			u.Category
		UNION ALL
		SELECT
			SUM(CASE
				WHEN g_1."Year" = 2020 THEN g_1.Amount
				ELSE NULL
			END)::Int as Value_1,
			g_1.Category as Key_1
		FROM
			CategorySales g_1
		GROUP BY
			g_1.Category
	) u_1
WHERE
	u_1.Value_1 = @castOfA

-- Informix.DB2 Informix
SELECT
	u_1.Value_1
FROM
	(
		SELECT
			'Y2010'::NVarChar(255) as Name,
			u.Category as Key_1,
			SUM(CASE
				WHEN u."Year" = 2010 THEN u.Amount
				ELSE NULL
			END)::Int as Value_1
		FROM
			CategorySales u
		GROUP BY
			u.Category
		UNION ALL
		SELECT
			'Y2020'::NVarChar(255) as Name,
			g_1.Category as Key_1,
			SUM(CASE
				WHEN g_1."Year" = 2020 THEN g_1.Amount
				ELSE NULL
			END)::Int as Value_1
		FROM
			CategorySales g_1
		GROUP BY
			g_1.Category
	) u_1
WHERE
	u_1.Name = 'Y2010'
ORDER BY
	u_1.Key_1

-- Informix.DB2 Informix
SELECT
	u_1.Value_1
FROM
	(
		SELECT
			'Y2010'::NVarChar(255) as Name,
			SUM(CASE
				WHEN u."Year" = 2010 THEN u.Amount
				ELSE NULL
			END)::Int as Value_1
		FROM
			CategorySales u
		GROUP BY
			u.Category
		UNION ALL
		SELECT
			'Y2020'::NVarChar(255) as Name,
			SUM(CASE
				WHEN g_1."Year" = 2020 THEN g_1.Amount
				ELSE NULL
			END)::Int as Value_1
		FROM
			CategorySales g_1
		GROUP BY
			g_1.Category
	) u_1
WHERE
	u_1.Name = 'Y2020'

