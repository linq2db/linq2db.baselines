-- PostgreSQL.13 PostgreSQL12
SELECT
	t."Id",
	NTILE(4) OVER ()
FROM
	"WindowFunctionTestEntity" t

