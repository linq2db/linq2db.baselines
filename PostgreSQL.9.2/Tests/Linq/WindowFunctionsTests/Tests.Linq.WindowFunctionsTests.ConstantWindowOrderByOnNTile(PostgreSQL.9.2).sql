-- PostgreSQL.9.2 PostgreSQL
SELECT
	t."Id",
	NTILE(4) OVER ()
FROM
	"WindowFunctionTestEntity" t

