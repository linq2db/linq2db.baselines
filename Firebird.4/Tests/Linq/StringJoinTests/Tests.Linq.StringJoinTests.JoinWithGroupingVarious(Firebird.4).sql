-- Firebird.4 Firebird4

SELECT
	"t13"."Key_1",
	"t2"."Join_1",
	"t4"."Join_1",
	"t7"."Join_1",
	"t9"."Join_1",
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
					SELECT DISTINCT
						"t"."NullableValue"
					FROM
						"SampleClass" "t"
					WHERE
						"t13"."Key_1" = "t"."Id"
				) "t1"
		) "t2" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST(Coalesce("t3"."NullableValue", ''), ', '), '') as "Join_1"
			FROM
				(
					SELECT DISTINCT
						"t_1"."NullableValue"
					FROM
						"SampleClass" "t_1"
					WHERE
						"t13"."Key_1" = "t_1"."Id" AND "t_1"."NullableValue" IS NOT NULL
				) "t3"
		) "t4" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST(Coalesce("t6"."NullableValue", ''), ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"t5"."NullableValue"
					FROM
						(
							SELECT DISTINCT
								"t_2"."NullableValue"
							FROM
								"SampleClass" "t_2"
							WHERE
								"t13"."Key_1" = "t_2"."Id" AND "t_2"."NullableValue" IS NOT NULL
						) "t5"
					ORDER BY
						"t5"."NullableValue" DESC
				) "t6"
		) "t7" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST("t8"."NotNullableValue", ', '), '') as "Join_1"
			FROM
				(
					SELECT DISTINCT
						"t_3"."NotNullableValue"
					FROM
						"SampleClass" "t_3"
					WHERE
						"t13"."Key_1" = "t_3"."Id"
				) "t8"
		) "t9" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST("t11"."NotNullableValue", ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"t10"."NotNullableValue"
					FROM
						(
							SELECT DISTINCT
								"t_4"."NotNullableValue"
							FROM
								"SampleClass" "t_4"
							WHERE
								"t13"."Key_1" = "t_4"."Id"
						) "t10"
					ORDER BY
						"t10"."NotNullableValue" DESC
				) "t11"
		) "t12" ON 1=1
ORDER BY
	"t13"."Key_1"

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

