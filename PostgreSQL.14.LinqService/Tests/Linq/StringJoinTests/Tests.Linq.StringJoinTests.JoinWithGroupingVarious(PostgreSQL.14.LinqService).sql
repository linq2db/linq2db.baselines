BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t1."Key_1",
	t1."Join_1",
	t1."Join_2",
	t1."Join_3",
	t1."Join_4",
	(
		SELECT
			Coalesce(STRING_AGG(t2."NotNullableValue", ', ' ORDER BY t2."NotNullableValue" DESC NULLS FIRST), '')
		FROM
			(
				SELECT DISTINCT
					t."NotNullableValue"
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
			STRING_AGG(DISTINCT Coalesce(g_1."NullableValue", ''), ', ') as "Join_1",
			Coalesce(STRING_AGG(DISTINCT g_1."NullableValue", ', '), '') as "Join_2",
			Coalesce(STRING_AGG(DISTINCT g_1."NullableValue", ', ' ORDER BY g_1."NullableValue" DESC), '') as "Join_3",
			STRING_AGG(DISTINCT g_1."NotNullableValue", ', ') as "Join_4"
		FROM
			"SampleClass" g_1
		GROUP BY
			g_1."Id"
	) t1
ORDER BY
	t1."Key_1"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

