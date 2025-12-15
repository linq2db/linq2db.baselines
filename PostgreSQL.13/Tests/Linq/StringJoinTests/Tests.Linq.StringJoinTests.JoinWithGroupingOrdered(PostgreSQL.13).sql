-- PostgreSQL.13 PostgreSQL

SELECT
	g_1."Id",
	STRING_AGG(Coalesce(g_1."NullableValue", ''), ', ' ORDER BY g_1."NotNullableValue" NULLS FIRST, g_1."NullableValue" DESC NULLS FIRST),
	Coalesce(STRING_AGG(g_1."NullableValue", ', ' ORDER BY g_1."NotNullableValue", g_1."NullableValue" DESC) FILTER (WHERE g_1."NullableValue" <> ''), ''),
	STRING_AGG(g_1."NotNullableValue", ', ' ORDER BY g_1."NotNullableValue" DESC NULLS FIRST, g_1."NullableValue" DESC NULLS FIRST),
	STRING_AGG(Coalesce(g_1."NullableValue", ''), ', ' ORDER BY g_1."NotNullableValue" DESC NULLS FIRST),
	STRING_AGG(g_1."NotNullableValue", ', ' ORDER BY g_1."NotNullableValue" DESC NULLS FIRST),
	STRING_AGG(g_1."NotNullableValue", ', ' ORDER BY CASE
		WHEN g_1."NullableValue" IS NULL THEN 0
		ELSE 1
	END NULLS FIRST, g_1."NotNullableValue" DESC NULLS FIRST, g_1."NullableValue" NULLS FIRST)
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id"
ORDER BY
	g_1."Id"

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

