BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"InstanceClass" t
WHERE
	t."Id"::VarChar || t."Value"::VarChar = t."Id"::VarChar || t."Value"

