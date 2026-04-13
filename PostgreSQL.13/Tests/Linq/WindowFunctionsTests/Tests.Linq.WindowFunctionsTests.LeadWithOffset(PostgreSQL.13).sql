-- PostgreSQL.13 PostgreSQL

SELECT
	t."Id",
	LEAD(t."IntValue", 2) OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

