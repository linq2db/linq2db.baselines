BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	STRING_AGG(t."Value1", ' -> ')
FROM
	"SampleClass" t

