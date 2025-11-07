-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	LISTAGG(t1."Value1", ' -> ') WITHIN GROUP (ORDER BY t1."Value1")
FROM
	"SampleClass" t1

