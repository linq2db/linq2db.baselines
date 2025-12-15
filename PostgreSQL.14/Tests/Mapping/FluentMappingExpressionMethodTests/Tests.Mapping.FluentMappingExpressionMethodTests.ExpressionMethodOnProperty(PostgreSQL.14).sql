-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"InstanceClass" t
WHERE
	t."Id"::text || t."Value"::text = t."Id"::text || t."Value"

