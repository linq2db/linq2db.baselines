-- Oracle.11.Managed Oracle11

SELECT
	Coalesce(LISTAGG(t1."NullableValue", ', ') WITHIN GROUP (ORDER BY t1."NotNullableValue"), '')
FROM
	"SampleClass" t1

