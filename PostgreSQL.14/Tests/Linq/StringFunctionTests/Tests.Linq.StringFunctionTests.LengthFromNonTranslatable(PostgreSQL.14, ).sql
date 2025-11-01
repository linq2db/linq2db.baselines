-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Str",
	Length(t."Str"),
	'original-' || t."Str"
FROM
	"TestLengthModel" t

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Str"
FROM
	"TestLengthModel" t1

