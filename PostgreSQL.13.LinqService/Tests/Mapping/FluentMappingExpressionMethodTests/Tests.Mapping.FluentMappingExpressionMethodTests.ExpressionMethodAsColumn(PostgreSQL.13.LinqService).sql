BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value",
	'M' || t1."Id"::VarChar
FROM
	"InstanceClass" t1

