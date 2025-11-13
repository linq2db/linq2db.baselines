-- Firebird.4 Firebird4

SELECT
	"t1"."Key_1",
	(
		SELECT
			Coalesce(LIST(Coalesce("t2"."NullableValue", ''), ', '), '')
		FROM
			(
				SELECT DISTINCT
					"t"."NullableValue"
				FROM
					"SampleClass" "t"
				WHERE
					"t1"."Key_1" = "t"."Id"
			) "t2"
	),
	(
		SELECT
			Coalesce(LIST(Coalesce("t3"."NullableValue", ''), ', '), '')
		FROM
			(
				SELECT DISTINCT
					"t_1"."NullableValue"
				FROM
					"SampleClass" "t_1"
				WHERE
					"t1"."Key_1" = "t_1"."Id" AND "t_1"."NullableValue" IS NOT NULL
			) "t3"
	),
	(
		SELECT
			Coalesce(LIST(Coalesce("t5"."NullableValue", ''), ', '), '')
		FROM
			(
				SELECT
					"t4"."NullableValue"
				FROM
					(
						SELECT DISTINCT
							"t_2"."NullableValue"
						FROM
							"SampleClass" "t_2"
						WHERE
							"t1"."Key_1" = "t_2"."Id" AND "t_2"."NullableValue" IS NOT NULL
					) "t4"
				ORDER BY
					"t4"."NullableValue" DESC
			) "t5"
	),
	(
		SELECT
			Coalesce(LIST("t6"."NotNullableValue", ', '), '')
		FROM
			(
				SELECT DISTINCT
					"t_3"."NotNullableValue"
				FROM
					"SampleClass" "t_3"
				WHERE
					"t1"."Key_1" = "t_3"."Id"
			) "t6"
	),
	(
		SELECT
			Coalesce(LIST("t8"."NotNullableValue", ', '), '')
		FROM
			(
				SELECT
					"t7"."NotNullableValue"
				FROM
					(
						SELECT DISTINCT
							"t_4"."NotNullableValue"
						FROM
							"SampleClass" "t_4"
						WHERE
							"t1"."Key_1" = "t_4"."Id"
					) "t7"
				ORDER BY
					"t7"."NotNullableValue" DESC
			) "t8"
	)
FROM
	(
		SELECT
			"g_1"."Id" as "Key_1"
		FROM
			"SampleClass" "g_1"
		GROUP BY
			"g_1"."Id"
	) "t1"
ORDER BY
	"t1"."Key_1"

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

