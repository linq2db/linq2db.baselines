-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @separator Varchar2(2) -- String
SET     @separator = ', '

SELECT
	g_1."Id",
	Coalesce(LISTAGG(Coalesce(g_1."NullableValue", ''), :separator) WITHIN GROUP (ORDER BY g_1."NullableValue"), ''),
	Coalesce(LISTAGG(g_1."NotNullableValue", :separator) WITHIN GROUP (ORDER BY g_1."NotNullableValue"), '')
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

