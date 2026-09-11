-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY t."Id"),
	ROW_NUMBER() OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

