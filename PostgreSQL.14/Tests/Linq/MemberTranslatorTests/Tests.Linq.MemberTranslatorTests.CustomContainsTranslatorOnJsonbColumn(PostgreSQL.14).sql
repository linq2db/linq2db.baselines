-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t."Id"
FROM
	"JsonbContainsEntity" t
WHERE
	Lower(t."Value"::text) LIKE '%' || 'amp' || '%'
ORDER BY
	t."Id"

