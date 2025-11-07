-- Firebird.5 Firebird4

SELECT
	"t7"."Key_1",
	"t7"."Join_1",
	"t7"."Join_2",
	"t3"."Join_1",
	"t7"."Join_3",
	"t6"."Join_1"
FROM
	(
		SELECT
			"g_1"."Id" as "Key_1",
			LIST(DISTINCT Coalesce("g_1"."NullableValue", ''), ', ') as "Join_1",
			Coalesce(LIST(DISTINCT "g_1"."NullableValue", ', '), '') as "Join_2",
			LIST(DISTINCT "g_1"."NotNullableValue", ', ') as "Join_3"
		FROM
			"SampleClass" "g_1"
		GROUP BY
			"g_1"."Id"
	) "t7"
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST(Coalesce("t2"."NullableValue", ''), ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"t1"."NullableValue"
					FROM
						(
							SELECT DISTINCT
								"t"."NullableValue"
							FROM
								"SampleClass" "t"
							WHERE
								"t7"."Key_1" = "t"."Id" AND "t"."NullableValue" IS NOT NULL
						) "t1"
					ORDER BY
						"t1"."NullableValue" DESC
				) "t2"
		) "t3" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST("t5"."NotNullableValue", ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"t4"."NotNullableValue"
					FROM
						(
							SELECT DISTINCT
								"t_1"."NotNullableValue"
							FROM
								"SampleClass" "t_1"
							WHERE
								"t7"."Key_1" = "t_1"."Id"
						) "t4"
					ORDER BY
						"t4"."NotNullableValue" DESC
				) "t5"
		) "t6" ON 1=1
ORDER BY
	"t7"."Key_1"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

