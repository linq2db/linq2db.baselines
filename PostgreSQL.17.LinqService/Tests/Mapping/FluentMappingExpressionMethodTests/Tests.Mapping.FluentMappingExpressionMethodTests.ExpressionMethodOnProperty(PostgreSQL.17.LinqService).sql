BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"InstanceClass" t
WHERE
	t."Id"::text || t."Value"::text = t."Id"::text || t."Value"

