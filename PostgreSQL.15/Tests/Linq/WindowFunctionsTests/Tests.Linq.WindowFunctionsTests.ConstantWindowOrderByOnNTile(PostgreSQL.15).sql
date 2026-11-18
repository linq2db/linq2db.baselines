-- PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	NTILE(4) OVER ()
FROM
	"WindowFunctionTestEntity" t

