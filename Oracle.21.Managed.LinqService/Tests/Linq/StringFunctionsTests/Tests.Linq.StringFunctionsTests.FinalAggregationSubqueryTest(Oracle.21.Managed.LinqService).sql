BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	(
		SELECT
			COUNT(DISTINCT t1."Value1")
		FROM
			"SampleClass" t1
	),
	(
		SELECT
			LISTAGG(t2."Value1", ' -> ') WITHIN GROUP (ORDER BY ROWNUM)
		FROM
			"SampleClass" t2
	)
FROM
	"SampleClass" t

