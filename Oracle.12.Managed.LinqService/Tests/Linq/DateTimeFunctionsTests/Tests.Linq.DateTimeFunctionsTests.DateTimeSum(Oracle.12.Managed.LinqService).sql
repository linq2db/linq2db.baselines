BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	g_1.ID,
	COUNT(*),
	SUM(1000 * (EXTRACT(SECOND FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP)) + 60 * (EXTRACT(MINUTE FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP)) + 60 * (EXTRACT(HOUR FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP)) + 24 * EXTRACT(DAY FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP)))))),
	MAX(1000 * (EXTRACT(SECOND FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP)) + 60 * (EXTRACT(MINUTE FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP)) + 60 * (EXTRACT(HOUR FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP)) + 24 * EXTRACT(DAY FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP))))))
FROM
	"LinqDataTypes" g_1
GROUP BY
	g_1.ID

