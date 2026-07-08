-- PostgreSQL.13 PostgreSQL12

SELECT
	t."Id",
	LEAD(t."IntValue", 2, 0) OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

