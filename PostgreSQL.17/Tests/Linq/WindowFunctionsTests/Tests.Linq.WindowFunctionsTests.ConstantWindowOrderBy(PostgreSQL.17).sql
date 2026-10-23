-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY t."Id"),
	ROW_NUMBER() OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

