BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	v.value,
	v.idx
FROM
	"SampleClass" t1
		INNER JOIN LATERAL UNNEST(t1."StrArray") WITH ORDINALITY v(value, idx) ON 1=1
WHERE
	v.value LIKE 'V%' ESCAPE '~'

