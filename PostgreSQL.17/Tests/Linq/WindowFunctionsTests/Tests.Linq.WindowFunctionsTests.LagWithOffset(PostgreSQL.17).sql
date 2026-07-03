-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	t."Id",
	LAG(t."IntValue", 2) OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

