-- PostgreSQL.11 PostgreSQL
SELECT
	t."Id",
	ROW_NUMBER() OVER ()
FROM
	"WindowFunctionTestEntity" t

