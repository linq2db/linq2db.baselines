-- PostgreSQL.19 PostgreSQL12
SELECT
	t."Id",
	ROW_NUMBER() OVER ()
FROM
	"WindowFunctionTestEntity" t

