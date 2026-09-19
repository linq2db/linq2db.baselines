-- Oracle.11.Managed Oracle11
SELECT
	t1."Category",
	t1.Y2000Q1,
	t1.Y2000Q2
FROM
	"QuarterAmounts" PIVOT (SUM("Amount") FOR ("Year", "Quarter") IN ((2000, 1) AS Y2000Q1, (2000, 2) AS Y2000Q2)) t1
ORDER BY
	t1."Category"

