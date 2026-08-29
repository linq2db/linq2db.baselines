-- PostgreSQL.12 PostgreSQL12
SELECT
	t."Id",
	RANK() OVER ()
FROM
	"WindowFunctionTestEntity" t

