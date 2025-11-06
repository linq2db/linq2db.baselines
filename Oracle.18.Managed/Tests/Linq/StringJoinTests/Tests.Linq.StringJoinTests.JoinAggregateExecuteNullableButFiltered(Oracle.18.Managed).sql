-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Coalesce(LISTAGG(t1."NullableValue", ', ') WITHIN GROUP (ORDER BY t1."NotNullableValue"), '')
FROM
	"SampleClass" t1

