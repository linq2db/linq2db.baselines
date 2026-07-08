-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	t1."Id",
	t1."Value",
	'M' || t1."Id"::text
FROM
	"InstanceClass" t1

