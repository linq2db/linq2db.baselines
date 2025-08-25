BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	STRING_AGG(t1."Value1", ' -> ')
FROM
	"SampleClass" t1

