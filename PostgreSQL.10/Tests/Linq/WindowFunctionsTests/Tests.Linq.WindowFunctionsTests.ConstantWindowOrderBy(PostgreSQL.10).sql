-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t."Id",
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY t."Id"),
	ROW_NUMBER() OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

