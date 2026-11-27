-- PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*) FILTER (WHERE g_1."TimeStamp" > '2020-02-29 17:54:55.123'::timestamp)
FROM
	"GroupByTimeStampTable" g_1
GROUP BY
	g_1."TimeStamp"

