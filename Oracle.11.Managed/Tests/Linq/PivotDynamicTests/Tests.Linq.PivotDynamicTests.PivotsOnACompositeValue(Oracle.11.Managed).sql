-- Oracle.11.Managed Oracle11
DECLARE @Year Int32
SET     @Year = 2000
DECLARE @Quarter Int32
SET     @Quarter = 1
DECLARE @Quarter_1 Int32
SET     @Quarter_1 = 2

SELECT
	g_1."Category",
	SUM(CASE
		WHEN g_1."Year" = :Year AND g_1."Quarter" = :Quarter THEN g_1."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN g_1."Year" = :Year AND g_1."Quarter" = :Quarter_1 THEN g_1."Amount"
		ELSE NULL
	END)
FROM
	"QuarterAmounts" g_1
GROUP BY
	g_1."Category"

