-- PostgreSQL.18 PostgreSQL12
SELECT
	t."Str",
	Length(t."Str"),
	'original-' || Coalesce(t."Str", '')
FROM
	"TestLengthModel" t

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Str"
FROM
	"TestLengthModel" t1

