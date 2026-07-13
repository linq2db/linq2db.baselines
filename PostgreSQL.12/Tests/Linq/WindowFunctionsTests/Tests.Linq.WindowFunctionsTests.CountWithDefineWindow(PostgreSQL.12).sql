-- PostgreSQL.12 PostgreSQL12
SELECT
	COUNT(*) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

