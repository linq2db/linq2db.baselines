-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @separator Text(2) -- String
SET     @separator = ': '

SELECT
	g_1."Id",
	Coalesce(STRING_AGG(Coalesce(g_1."NullableValue", ''), :separator), ''),
	Coalesce(STRING_AGG(g_1."NotNullableValue", :separator), '')
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id"
ORDER BY
	g_1."Id"

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

