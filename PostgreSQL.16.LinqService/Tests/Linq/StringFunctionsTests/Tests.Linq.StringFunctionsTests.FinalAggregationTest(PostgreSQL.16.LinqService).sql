BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	STRING_AGG(t."Value1", ' -> ')
FROM
	"SampleClass" t

