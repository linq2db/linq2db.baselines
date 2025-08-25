BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t."Str",
	Length(t."Str")
FROM
	"TestLengthModel" t
LIMIT 2

