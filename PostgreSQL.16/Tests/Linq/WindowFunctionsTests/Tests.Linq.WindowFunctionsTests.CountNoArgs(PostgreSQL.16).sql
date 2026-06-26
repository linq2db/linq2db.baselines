-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	COUNT(*) OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

