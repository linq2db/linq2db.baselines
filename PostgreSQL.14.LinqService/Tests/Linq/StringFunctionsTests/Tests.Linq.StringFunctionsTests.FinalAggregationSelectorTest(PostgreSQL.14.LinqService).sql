BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	STRING_AGG(t1."Value1", ' -> ')
FROM
	"SampleClass" t1

