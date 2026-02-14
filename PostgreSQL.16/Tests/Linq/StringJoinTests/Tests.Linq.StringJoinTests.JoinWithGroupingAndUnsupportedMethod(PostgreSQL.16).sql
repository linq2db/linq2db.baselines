-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Key_1",
	(
		SELECT
			Coalesce(STRING_AGG(Coalesce(t2."NullableValue", ''), ', '), '') as "Nullable_1"
		FROM
			(
				SELECT
					x."NullableValue"
				FROM
					"SampleClass" x
				WHERE
					t1."Key_1" = x."Id"
				ORDER BY
					x."NotNullableValue"
				LIMIT 2
			) t2
	),
	(
		SELECT
			Coalesce(STRING_AGG(t3."NotNullableValue", ', '), '') as "NotNullable"
		FROM
			(
				SELECT
					x_1."NotNullableValue"
				FROM
					"SampleClass" x_1
				WHERE
					t1."Key_1" = x_1."Id"
				ORDER BY
					x_1."NotNullableValue"
				LIMIT 2
			) t3
	)
FROM
	(
		SELECT DISTINCT
			g_1."Id" as "Key_1"
		FROM
			"SampleClass" g_1
	) t1
ORDER BY
	t1."Key_1"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."PK",
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

