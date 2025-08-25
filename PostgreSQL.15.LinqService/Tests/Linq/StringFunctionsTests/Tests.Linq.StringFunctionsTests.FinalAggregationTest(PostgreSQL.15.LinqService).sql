BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	STRING_AGG(t."Value1", ' -> ')
FROM
	"SampleClass" t

