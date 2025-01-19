BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	LISTAGG(t1."Value1", ' -> ') WITHIN GROUP (ORDER BY ROWNUM)
FROM
	"SampleClass" t1

