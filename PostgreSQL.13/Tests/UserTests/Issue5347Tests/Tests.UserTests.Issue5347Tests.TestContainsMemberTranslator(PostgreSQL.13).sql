-- PostgreSQL.13 PostgreSQL12
SELECT
	t."Id"
FROM
	"TestClass5347" t
WHERE
	Lower(t."Value"::text) LIKE '%' || 'amp' || '%'
ORDER BY
	t."Id"

