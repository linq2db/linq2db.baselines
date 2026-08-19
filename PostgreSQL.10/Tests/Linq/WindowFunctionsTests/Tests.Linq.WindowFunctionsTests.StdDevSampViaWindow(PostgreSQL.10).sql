-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t."Id",
	STDDEV_SAMP(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

