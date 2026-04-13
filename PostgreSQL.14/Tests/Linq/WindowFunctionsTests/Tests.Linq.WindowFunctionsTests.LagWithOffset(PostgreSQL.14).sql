-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."Id",
	LAG(t."IntValue", 2) OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

