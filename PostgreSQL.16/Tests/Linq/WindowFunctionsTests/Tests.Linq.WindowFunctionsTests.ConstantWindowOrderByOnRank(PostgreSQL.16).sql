-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	RANK() OVER ()
FROM
	"WindowFunctionTestEntity" t

