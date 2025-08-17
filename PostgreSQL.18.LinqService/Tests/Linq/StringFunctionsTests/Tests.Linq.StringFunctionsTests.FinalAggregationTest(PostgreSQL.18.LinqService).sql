BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	STRING_AGG(t."Value1", ' -> ')
FROM
	"SampleClass" t

