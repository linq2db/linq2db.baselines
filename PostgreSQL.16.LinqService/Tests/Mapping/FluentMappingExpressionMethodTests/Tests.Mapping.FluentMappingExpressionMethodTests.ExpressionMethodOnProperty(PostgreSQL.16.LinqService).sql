BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"InstanceClass" t
WHERE
	t."Id"::VarChar || t."Value"::VarChar = t."Id"::VarChar || t."Value"

