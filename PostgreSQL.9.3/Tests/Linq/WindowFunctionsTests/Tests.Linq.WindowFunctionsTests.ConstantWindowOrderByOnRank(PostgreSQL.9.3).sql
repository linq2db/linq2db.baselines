-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	RANK() OVER ()
FROM
	"WindowFunctionTestEntity" t

