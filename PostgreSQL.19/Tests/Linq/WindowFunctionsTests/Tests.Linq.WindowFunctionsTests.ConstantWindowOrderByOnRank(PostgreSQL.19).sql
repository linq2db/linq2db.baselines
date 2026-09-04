-- PostgreSQL.19 PostgreSQL12
SELECT
	t."Id",
	RANK() OVER ()
FROM
	"WindowFunctionTestEntity" t

