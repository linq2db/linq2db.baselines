-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t."Id",
	RANK() OVER ()
FROM
	"WindowFunctionTestEntity" t

