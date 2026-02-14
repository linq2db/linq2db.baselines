-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT
			COUNT(DISTINCT t1."Value1") as "CountExt"
		FROM
			"SampleClass" t1
	),
	(
		SELECT
			STRING_AGG(t2."Value1", ' -> ') as "Aggregated"
		FROM
			"SampleClass" t2
	)
FROM
	"SampleClass" t

