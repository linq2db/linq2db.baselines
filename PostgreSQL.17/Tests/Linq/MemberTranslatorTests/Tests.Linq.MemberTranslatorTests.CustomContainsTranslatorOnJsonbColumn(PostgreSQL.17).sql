-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t."Id"
FROM
	"JsonbContainsEntity" t
WHERE
	Lower(t."Value"::text) LIKE '%' || 'amp' || '%'
ORDER BY
	t."Id"

