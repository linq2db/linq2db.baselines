-- Oracle.11.Managed Oracle11

SELECT
	g_1."Id",
	LISTAGG(Coalesce(g_1."NullableValue", ''), ', ') WITHIN GROUP (ORDER BY g_1."NullableValue"),
	LISTAGG(g_1."NotNullableValue", ', ') WITHIN GROUP (ORDER BY g_1."NotNullableValue")
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id"
ORDER BY
	g_1."Id"

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

