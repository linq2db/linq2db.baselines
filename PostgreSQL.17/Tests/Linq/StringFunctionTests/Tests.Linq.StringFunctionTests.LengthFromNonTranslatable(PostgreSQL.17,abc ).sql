-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	t."Str",
	Length(t."Str"),
	'original-' || Coalesce(t."Str", '')
FROM
	"TestLengthModel" t

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."Str"
FROM
	"TestLengthModel" t1

