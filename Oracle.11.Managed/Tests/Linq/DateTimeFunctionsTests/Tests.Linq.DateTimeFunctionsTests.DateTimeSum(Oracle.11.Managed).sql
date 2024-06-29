BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	g_2.ID,
	g_2.COUNT_1,
	g_2.SUM_1,
	CASE
		WHEN g_2.SUM_1 IS NOT NULL THEN 1
		ELSE 0
	END,
	g_2.MAX_1
FROM
	(
		SELECT
			g_1.ID,
			COUNT(*) as COUNT_1,
			SUM(1000 * (EXTRACT(SECOND FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP)) + 60 * (EXTRACT(MINUTE FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP)) + 60 * (EXTRACT(HOUR FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP)) + 24 * EXTRACT(DAY FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP)))))) as SUM_1,
			MAX(1000 * (EXTRACT(SECOND FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP)) + 60 * (EXTRACT(MINUTE FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP)) + 60 * (EXTRACT(HOUR FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP)) + 24 * EXTRACT(DAY FROM CAST ((g_1."DateTimeValue" + 1D * INTERVAL '1' DAY) as TIMESTAMP) - CAST (g_1."DateTimeValue" as TIMESTAMP)))))) as MAX_1
		FROM
			"LinqDataTypes" g_1
		GROUP BY
			g_1.ID
	) g_2

