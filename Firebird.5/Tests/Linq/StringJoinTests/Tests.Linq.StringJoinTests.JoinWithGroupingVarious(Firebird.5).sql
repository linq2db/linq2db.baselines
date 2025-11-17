-- Firebird.5 Firebird4

SELECT
	"t1"."Key_1",
	"t1"."Join_1",
	"t1"."Join_2",
	(
		SELECT
			Coalesce(LIST(Coalesce("t3"."NullableValue", ''), ', '), '')
		FROM
			(
				SELECT
					"t2"."NullableValue"
				FROM
					(
						SELECT DISTINCT
							"t"."NullableValue"
						FROM
							"SampleClass" "t"
						WHERE
							"t1"."Key_1" = "t"."Id" AND "t"."NullableValue" IS NOT NULL
					) "t2"
				ORDER BY
					"t2"."NullableValue" DESC
			) "t3"
	),
	"t1"."Join_3",
	(
		SELECT
			Coalesce(LIST("t5"."NotNullableValue", ', '), '')
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
							"t1"."Key_1" = "t_1"."Id"
					) "t4"
				ORDER BY
					"t4"."NotNullableValue" DESC
			) "t5"
	)
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
	) "t1"
ORDER BY
	"t1"."Key_1"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

