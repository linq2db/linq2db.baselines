BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	STRING_AGG(t."Value4", ' -> ')
FROM
	"SampleClass" t

