BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	STRING_AGG(t1."Value4", ' -> ')
FROM
	"SampleClass" t1

