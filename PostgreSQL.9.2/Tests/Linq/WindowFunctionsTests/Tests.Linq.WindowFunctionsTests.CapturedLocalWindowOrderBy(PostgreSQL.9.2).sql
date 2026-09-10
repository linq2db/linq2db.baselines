-- PostgreSQL.9.2 PostgreSQL
SELECT
	t."Id",
	ROW_NUMBER() OVER ()
FROM
	"WindowFunctionTestEntity" t

