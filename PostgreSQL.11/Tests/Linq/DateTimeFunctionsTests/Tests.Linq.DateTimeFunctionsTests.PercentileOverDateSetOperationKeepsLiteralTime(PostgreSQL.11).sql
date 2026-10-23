-- PostgreSQL.11 PostgreSQL
SELECT
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY g_1."OpenedOn")
FROM
	"CoarseDayPairRow" g_1
GROUP BY
	g_1."Id"
UNION ALL
SELECT
	'2026-06-01 10:00:00'::timestamp::TimeStamp
FROM
	"CoarseDayPairRow" r

