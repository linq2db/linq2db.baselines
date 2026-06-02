-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	LISTAGG(t1."Value2", ' -> ') WITHIN GROUP (ORDER BY t1."Value1" NULLS LAST)
FROM
	"SampleClass" t1

