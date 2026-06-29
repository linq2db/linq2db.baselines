-- PostgreSQL.13 PostgreSQL13

SELECT
	t."Id",
	LEAD(t."IntValue", 2) OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

