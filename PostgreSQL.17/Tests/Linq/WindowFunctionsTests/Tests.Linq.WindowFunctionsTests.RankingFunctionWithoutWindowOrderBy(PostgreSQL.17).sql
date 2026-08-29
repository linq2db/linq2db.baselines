-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	t."CategoryId",
	ROW_NUMBER() OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

