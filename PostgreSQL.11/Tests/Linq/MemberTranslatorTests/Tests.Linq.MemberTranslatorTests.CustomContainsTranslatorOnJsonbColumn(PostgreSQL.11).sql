-- PostgreSQL.11 PostgreSQL
SELECT
	t."Id"
FROM
	"JsonbContainsEntity" t
WHERE
	Lower(t."Value"::text) LIKE '%' || 'amp' || '%'
ORDER BY
	t."Id"

