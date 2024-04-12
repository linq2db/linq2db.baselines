BeforeExecute
-- Informix.DB2 Informix

SELECT
	g_2.Year_1
FROM
	(
		SELECT
			Year(g_1.DateTimeValue) as Year_1
		FROM
			LinqDataTypes g_1
	) g_2
GROUP BY
	g_2.Year_1

