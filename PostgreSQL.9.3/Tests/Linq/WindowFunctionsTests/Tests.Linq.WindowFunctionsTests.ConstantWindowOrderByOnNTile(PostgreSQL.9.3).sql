-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	NTILE(4) OVER ()
FROM
	"WindowFunctionTestEntity" t

