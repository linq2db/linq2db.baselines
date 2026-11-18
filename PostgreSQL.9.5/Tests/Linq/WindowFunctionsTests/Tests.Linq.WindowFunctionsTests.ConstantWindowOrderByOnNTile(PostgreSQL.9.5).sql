-- PostgreSQL.9.5 PostgreSQL
SELECT
	t."Id",
	NTILE(4) OVER ()
FROM
	"WindowFunctionTestEntity" t

