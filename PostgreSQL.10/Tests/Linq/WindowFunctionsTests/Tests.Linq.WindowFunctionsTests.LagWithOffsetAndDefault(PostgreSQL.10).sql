-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t."Id",
	LAG(t."IntValue", 2, 0) OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

