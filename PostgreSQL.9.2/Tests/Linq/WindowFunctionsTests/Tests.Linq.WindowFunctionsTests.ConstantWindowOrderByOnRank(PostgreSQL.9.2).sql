-- PostgreSQL.9.2 PostgreSQL
SELECT
	t."Id",
	RANK() OVER ()
FROM
	"WindowFunctionTestEntity" t

