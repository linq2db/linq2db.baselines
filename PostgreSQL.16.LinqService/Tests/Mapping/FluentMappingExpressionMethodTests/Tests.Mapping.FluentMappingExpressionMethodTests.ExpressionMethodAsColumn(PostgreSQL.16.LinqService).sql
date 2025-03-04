BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value",
	'M' || t1."Id"::VarChar
FROM
	"InstanceClass" t1

