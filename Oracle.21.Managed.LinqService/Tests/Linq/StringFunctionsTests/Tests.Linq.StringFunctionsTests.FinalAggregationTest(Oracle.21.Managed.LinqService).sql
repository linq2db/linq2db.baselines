BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	LISTAGG(t."Value1", ' -> ') WITHIN GROUP (ORDER BY ROWNUM)
FROM
	"SampleClass" t

