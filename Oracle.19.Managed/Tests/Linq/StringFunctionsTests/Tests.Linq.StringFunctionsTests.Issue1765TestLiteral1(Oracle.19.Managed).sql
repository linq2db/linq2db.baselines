-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	LISTAGG(CAST(t1."Value4" AS VarChar(50)), ' -> ') WITHIN GROUP (ORDER BY t1."Value4")
FROM
	"SampleClass" t1

