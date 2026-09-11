-- PostgreSQL.11 PostgreSQL
SELECT
	t."Id",
	RANK() OVER ()
FROM
	"WindowFunctionTestEntity" t

