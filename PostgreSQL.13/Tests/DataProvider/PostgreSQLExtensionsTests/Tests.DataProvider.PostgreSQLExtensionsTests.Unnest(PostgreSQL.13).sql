-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	v.value
FROM
	"SampleClass" t1
		INNER JOIN LATERAL UNNEST(t1."StrArray") v(value) ON 1=1
WHERE
	v.value LIKE 'V%' ESCAPE '~'

