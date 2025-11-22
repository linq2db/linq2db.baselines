-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."Str",
	Length(t."Str")
FROM
	"TestLengthModel" t
LIMIT 2

