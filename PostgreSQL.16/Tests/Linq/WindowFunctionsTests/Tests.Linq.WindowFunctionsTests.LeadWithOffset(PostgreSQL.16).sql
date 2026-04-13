-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	LEAD(t."IntValue", 2) OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

