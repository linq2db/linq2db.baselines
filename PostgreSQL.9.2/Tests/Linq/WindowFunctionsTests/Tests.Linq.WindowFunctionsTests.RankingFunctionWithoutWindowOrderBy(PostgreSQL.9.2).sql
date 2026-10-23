-- PostgreSQL.9.2 PostgreSQL
SELECT
	t."Id",
	t."CategoryId",
	ROW_NUMBER() OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

