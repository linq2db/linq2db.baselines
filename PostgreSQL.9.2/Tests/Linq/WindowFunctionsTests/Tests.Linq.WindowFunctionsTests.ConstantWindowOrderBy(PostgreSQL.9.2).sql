-- PostgreSQL.9.2 PostgreSQL
SELECT
	t."Id",
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY t."Id"),
	ROW_NUMBER() OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

