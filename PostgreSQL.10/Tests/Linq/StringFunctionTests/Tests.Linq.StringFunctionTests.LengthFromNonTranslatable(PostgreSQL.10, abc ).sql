-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t."Str",
	Length(t."Str"),
	'original-' || Coalesce(t."Str", '')
FROM
	"TestLengthModel" t

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Str"
FROM
	"TestLengthModel" t1

