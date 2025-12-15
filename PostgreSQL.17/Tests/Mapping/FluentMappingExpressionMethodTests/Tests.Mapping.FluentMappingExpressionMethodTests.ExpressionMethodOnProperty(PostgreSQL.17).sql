-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"InstanceClass" t
WHERE
	t."Id"::text || t."Value"::text = t."Id"::text || t."Value"

