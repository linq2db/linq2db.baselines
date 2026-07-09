-- PostgreSQL.13 PostgreSQL13

SELECT
	t."Str",
	Length(t."Str")
FROM
	"TestLengthModel" t
LIMIT 2

