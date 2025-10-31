-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LISTAGG(t1."Value4", ' -> ') WITHIN GROUP (ORDER BY ROWNUM)
FROM
	"SampleClass" t1

