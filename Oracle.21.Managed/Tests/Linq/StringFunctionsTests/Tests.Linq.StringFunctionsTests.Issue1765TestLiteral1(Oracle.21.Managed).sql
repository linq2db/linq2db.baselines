-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	LISTAGG(t1."Value4", ' -> ') WITHIN GROUP (ORDER BY t1."Value4")
FROM
	"SampleClass" t1

