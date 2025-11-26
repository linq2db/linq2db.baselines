-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Key_1",
	t1."NullableDistinct",
	t1."NullableDistinctNotNullDistinct",
	t1."NullableDistinctNotNullDistinctOrdered",
	t1."NotNullableDistinct",
	(
		SELECT
			Coalesce(STRING_AGG(t2."NotNullableDistinctOrdered", ', ' ORDER BY t2."NotNullableDistinctOrdered" DESC NULLS FIRST), '')
		FROM
			(
				SELECT DISTINCT
					t."NotNullableValue" as "NotNullableDistinctOrdered"
				FROM
					"SampleClass" t
				WHERE
					t1."Key_1" = t."Id"
			) t2
	)
FROM
	(
		SELECT
			g_1."Id" as "Key_1",
			STRING_AGG(DISTINCT Coalesce(g_1."NullableValue", ''), ', ') as "NullableDistinct",
			Coalesce(STRING_AGG(DISTINCT g_1."NullableValue", ', '), '') as "NullableDistinctNotNullDistinct",
			Coalesce(STRING_AGG(DISTINCT g_1."NullableValue", ', ' ORDER BY g_1."NullableValue" DESC), '') as "NullableDistinctNotNullDistinctOrdered",
			STRING_AGG(DISTINCT g_1."NotNullableValue", ', ') as "NotNullableDistinct"
		FROM
			"SampleClass" g_1
		GROUP BY
			g_1."Id"
	) t1
ORDER BY
	t1."Key_1"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

