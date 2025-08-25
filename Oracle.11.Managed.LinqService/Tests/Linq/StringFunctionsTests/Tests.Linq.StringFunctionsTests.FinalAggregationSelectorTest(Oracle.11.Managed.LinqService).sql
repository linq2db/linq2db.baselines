BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	LISTAGG(t1."Value1", ' -> ') WITHIN GROUP (ORDER BY ROWNUM)
FROM
	"SampleClass" t1

