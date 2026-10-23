-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	ROW_NUMBER() OVER ()
FROM
	"WindowFunctionTestEntity" t

