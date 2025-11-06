-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Coalesce(LISTAGG(CASE
		WHEN t1."NullableValue" IN ('A', 'B') THEN t1."NullableValue"
		ELSE NULL
	END, ', ') WITHIN GROUP (ORDER BY t1."NotNullableValue"), '')
FROM
	"SampleClass" t1

