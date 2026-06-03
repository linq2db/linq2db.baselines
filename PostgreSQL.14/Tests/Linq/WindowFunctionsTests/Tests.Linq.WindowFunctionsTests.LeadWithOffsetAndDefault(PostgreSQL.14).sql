-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."Id",
	LEAD(t."IntValue", 2, 0) OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

