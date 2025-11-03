-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	g_1."Id",
	LISTAGG(Coalesce(g_1."NullableValue", ''), ', '),
	LISTAGG(g_1."NotNullableValue", ', ')
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id"
ORDER BY
	g_1."Id"

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

