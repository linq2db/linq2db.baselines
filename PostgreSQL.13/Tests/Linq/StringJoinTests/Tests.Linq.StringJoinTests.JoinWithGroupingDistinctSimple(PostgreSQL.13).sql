-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Key_1",
	(
		SELECT
			Coalesce(STRING_AGG(Coalesce(t2."NotNullableOrderedNoNulls", ''), ', '), '')
		FROM
			(
				SELECT DISTINCT
					t."NullableValue" as "NotNullableOrderedNoNulls"
				FROM
					"SampleClass" t
				WHERE
					t1."Key_1" = t."Id" AND t."NullableValue" IS NOT NULL
				ORDER BY
					t."NullableValue"
			) t2
	),
	(
		SELECT
			Coalesce(STRING_AGG(t4."NotNullableOrderedNulls", ', '), '')
		FROM
			(
				SELECT DISTINCT
					t3."NotNullableOrderedNulls"
				FROM
					(
						SELECT
							Coalesce(x."NullableValue", '') as "NotNullableOrderedNulls"
						FROM
							"SampleClass" x
						WHERE
							t1."Key_1" = x."Id"
					) t3
				ORDER BY
					t3."NotNullableOrderedNulls"
			) t4
	)
FROM
	(
		SELECT
			g_1."Id" as "Key_1"
		FROM
			"SampleClass" g_1
		GROUP BY
			g_1."Id"
	) t1
ORDER BY
	t1."Key_1"

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

