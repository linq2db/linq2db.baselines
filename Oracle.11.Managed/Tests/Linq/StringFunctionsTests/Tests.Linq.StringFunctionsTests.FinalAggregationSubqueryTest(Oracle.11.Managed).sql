-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			COUNT(DISTINCT t1."Value1") as "CountExt"
		FROM
			"SampleClass" t1
	),
	(
		SELECT
			LISTAGG(t2."Value1", ' -> ') WITHIN GROUP (ORDER BY t2."Value1") as "Aggregated"
		FROM
			"SampleClass" t2
	)
FROM
	"SampleClass" t

