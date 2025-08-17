BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t."Str",
	Length(t."Str")
FROM
	"TestLengthModel" t
LIMIT 2

