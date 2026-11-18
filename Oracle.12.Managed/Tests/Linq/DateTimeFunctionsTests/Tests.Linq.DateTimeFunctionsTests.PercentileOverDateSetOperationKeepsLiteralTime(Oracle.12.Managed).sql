-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	PERCENTILE_DISC(0.5D) WITHIN GROUP (ORDER BY g_1."OpenedOn")
FROM
	"CoarseDayPairRow" g_1
GROUP BY
	g_1."Id"
UNION ALL
SELECT
	CAST(TIMESTAMP '2026-06-01 10:00:00.000000' AS timestamp)
FROM
	"CoarseDayPairRow" r

