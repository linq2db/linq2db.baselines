-- Oracle.11.Managed Oracle11

SELECT
	LISTAGG(CAST(t1."Value4" AS VarChar(50)), ' -> ') WITHIN GROUP (ORDER BY t1."Value4")
FROM
	"SampleClass" t1

