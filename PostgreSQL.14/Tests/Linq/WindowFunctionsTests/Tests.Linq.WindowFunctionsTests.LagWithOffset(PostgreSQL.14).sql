-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	t."Id",
	LAG(t."IntValue", 2) OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

