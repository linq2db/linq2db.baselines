-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	LEAD(t."IntValue", 2, 0) OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

