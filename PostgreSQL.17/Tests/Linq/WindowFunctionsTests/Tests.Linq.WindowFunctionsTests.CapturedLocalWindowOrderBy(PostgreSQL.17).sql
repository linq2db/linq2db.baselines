-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	ROW_NUMBER() OVER ()
FROM
	"WindowFunctionTestEntity" t

