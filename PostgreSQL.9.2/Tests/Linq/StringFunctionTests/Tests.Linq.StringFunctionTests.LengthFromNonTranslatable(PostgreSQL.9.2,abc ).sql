-- PostgreSQL.9.2 PostgreSQL
SELECT
	t."Str",
	Length(t."Str"),
	'original-' || Coalesce(t."Str", '')
FROM
	"TestLengthModel" t

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."Str"
FROM
	"TestLengthModel" t1

