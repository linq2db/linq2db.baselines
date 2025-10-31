-- PostgreSQL.18 PostgreSQL

SELECT
	t."Str",
	Length(t."Str"),
	'original-' || t."Str"
FROM
	"TestLengthModel" t

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Str"
FROM
	"TestLengthModel" t1

