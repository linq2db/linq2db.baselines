-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	t."CategoryId",
	ROW_NUMBER() OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

