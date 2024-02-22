BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	g_2."Year_1"
FROM
	(
		SELECT
			To_Number(To_Char(g_1."DateTimeValue", 'YYYY')) as "Year_1"
		FROM
			"LinqDataTypes" g_1
	) g_2
GROUP BY
	g_2."Year_1"

