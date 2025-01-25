BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LISTAGG(t."Value1", ' -> ') WITHIN GROUP (ORDER BY ROWNUM)
FROM
	"SampleClass" t

