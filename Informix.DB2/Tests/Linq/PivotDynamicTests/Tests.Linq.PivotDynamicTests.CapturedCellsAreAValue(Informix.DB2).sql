-- Informix.DB2 Informix
SELECT
	g_1.Category,
	SUM(CASE
		WHEN g_1."Year" = 2000 THEN g_1.Amount
		ELSE NULL
	END),
	SUM(CASE
		WHEN g_1."Year" = 2010 THEN g_1.Amount
		ELSE NULL
	END)
FROM
	CategorySales g_1
GROUP BY
	g_1.Category

-- Informix.DB2 Informix
DECLARE @p Decimal(16)
SET     @p = 20

SELECT
	x.Id
FROM
	CategorySales x
WHERE
	x.Amount = @p

-- Informix.DB2 Informix
DECLARE @Cells Decimal(16)
SET     @Cells = 20

SELECT
	x.Id
FROM
	CategorySales x
WHERE
	x.Amount = @Cells

