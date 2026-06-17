-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Key_1",
	Coalesce((
		SELECT
			STRING_AGG(Coalesce(t2."Name", ''), ', ')
		FROM
			(
				SELECT
					h."NullableValue" as "Name"
				FROM
					"SampleClass" h
				WHERE
					t1."Key_1" = h."Id"
				ORDER BY
					h."NotNullableValue"
				LIMIT 2
			) t2
	), ''),
	Coalesce((
		SELECT
			STRING_AGG(t3."NotNullableValue", ', ')
		FROM
			(
				SELECT
					x."NotNullableValue"
				FROM
					"SampleClass" x
				WHERE
					t1."Key_1" = x."Id"
				ORDER BY
					x."NotNullableValue"
				LIMIT 2
			) t3
	), '')
FROM
	(
		SELECT DISTINCT
			g_1."Id" as "Key_1"
		FROM
			"SampleClass" g_1
	) t1
ORDER BY
	t1."Key_1"

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."PK",
	t1."Id",
	t1."NullableValue",
	t1."NotNullableValue",
	t1."VarcharValue",
	t1."NVarcharValue"
FROM
	"SampleClass" t1

