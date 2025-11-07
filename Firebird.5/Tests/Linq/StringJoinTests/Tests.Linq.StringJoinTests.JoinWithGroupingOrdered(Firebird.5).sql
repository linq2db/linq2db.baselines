-- Firebird.5 Firebird4

SELECT
	"t13"."Key_1",
	"t2"."Join_1",
	"t4"."Join_1",
	"t6"."Join_1",
	"t8"."Join_1",
	"t10"."Join_1",
	"t12"."Join_1"
FROM
	(
		SELECT
			"g_1"."Id" as "Key_1"
		FROM
			"SampleClass" "g_1"
		GROUP BY
			"g_1"."Id"
	) "t13"
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST(Coalesce("t1"."NullableValue", ''), ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"t"."NullableValue"
					FROM
						"SampleClass" "t"
					WHERE
						"t13"."Key_1" = "t"."Id"
					ORDER BY
						"t"."NotNullableValue",
						"t"."NullableValue" DESC
				) "t1"
		) "t2" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST(Coalesce("t3"."NullableValue", ''), ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"x"."NullableValue"
					FROM
						"SampleClass" "x"
					WHERE
						"t13"."Key_1" = "x"."Id" AND "x"."NullableValue" IS NOT NULL AND
						"x"."NullableValue" <> ''
					ORDER BY
						"x"."NotNullableValue",
						"x"."NullableValue" DESC
				) "t3"
		) "t4" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST("t5"."NotNullableValue", ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"t_1"."NotNullableValue"
					FROM
						"SampleClass" "t_1"
					WHERE
						"t13"."Key_1" = "t_1"."Id"
					ORDER BY
						"t_1"."NotNullableValue" DESC,
						"t_1"."NullableValue" DESC
				) "t5"
		) "t6" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST(Coalesce("t7"."NullableValue", ''), ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"t_2"."NullableValue"
					FROM
						"SampleClass" "t_2"
					WHERE
						"t13"."Key_1" = "t_2"."Id"
					ORDER BY
						"t_2"."NotNullableValue" DESC,
						"t_2"."NullableValue" DESC
				) "t7"
		) "t8" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST("t9"."NotNullableValue", ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"t_3"."NotNullableValue"
					FROM
						"SampleClass" "t_3"
					WHERE
						"t13"."Key_1" = "t_3"."Id"
					ORDER BY
						"t_3"."NotNullableValue" DESC,
						"t_3"."NullableValue" DESC
				) "t9"
		) "t10" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST("t11"."NotNullableValue", ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"t_4"."NotNullableValue"
					FROM
						"SampleClass" "t_4"
					WHERE
						"t13"."Key_1" = "t_4"."Id"
					ORDER BY
						CASE
							WHEN "t_4"."NullableValue" IS NULL THEN 0
							ELSE 1
						END,
						"t_4"."NotNullableValue" DESC,
						"t_4"."NullableValue"
				) "t11"
		) "t12" ON 1=1
ORDER BY
	"t13"."Key_1"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

