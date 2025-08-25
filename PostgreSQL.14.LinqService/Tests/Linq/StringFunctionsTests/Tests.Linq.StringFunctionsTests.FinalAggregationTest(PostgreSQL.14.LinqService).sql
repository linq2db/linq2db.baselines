BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	STRING_AGG(t."Value1", ' -> ')
FROM
	"SampleClass" t

