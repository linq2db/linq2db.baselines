-- Firebird.5 Firebird4

SELECT
	"t1"."Key_1",
	(
		SELECT
			Coalesce(LIST(Coalesce("t2"."NullableValue", ''), ', '), '')
		FROM
			(
				SELECT
					"t"."Id",
					"t"."NullableValue",
					"t"."NotNullableValue",
					"t"."VarcharValue",
					"t"."NVarcharValue"
				FROM
					"SampleClass" "t"
				WHERE
					"t1"."Key_1" = "t"."Id"
				ORDER BY
					"t"."NotNullableValue",
					"t"."NullableValue" DESC
			) "t2"
	),
	(
		SELECT
			Coalesce(LIST(Coalesce("t3"."NullableValue", ''), ', '), '')
		FROM
			(
				SELECT
					"x"."NullableValue"
				FROM
					"SampleClass" "x"
				WHERE
					"t1"."Key_1" = "x"."Id" AND "x"."NullableValue" IS NOT NULL AND
					"x"."NullableValue" <> ''
				ORDER BY
					"x"."NotNullableValue",
					"x"."NullableValue" DESC
			) "t3"
	),
	(
		SELECT
			Coalesce(LIST("t4"."NotNullableValue", ', '), '')
		FROM
			(
				SELECT
					"t_1"."Id",
					"t_1"."NullableValue",
					"t_1"."NotNullableValue",
					"t_1"."VarcharValue",
					"t_1"."NVarcharValue"
				FROM
					"SampleClass" "t_1"
				WHERE
					"t1"."Key_1" = "t_1"."Id"
				ORDER BY
					"t_1"."NotNullableValue" DESC,
					"t_1"."NullableValue" DESC
			) "t4"
	),
	(
		SELECT
			Coalesce(LIST(Coalesce("t5"."NullableValue", ''), ', '), '')
		FROM
			(
				SELECT
					"t_2"."Id",
					"t_2"."NullableValue",
					"t_2"."NotNullableValue",
					"t_2"."VarcharValue",
					"t_2"."NVarcharValue"
				FROM
					"SampleClass" "t_2"
				WHERE
					"t1"."Key_1" = "t_2"."Id"
				ORDER BY
					"t_2"."NotNullableValue" DESC,
					"t_2"."NullableValue" DESC
			) "t5"
	),
	(
		SELECT
			Coalesce(LIST("t6"."NotNullableValue", ', '), '')
		FROM
			(
				SELECT
					"t_3"."Id",
					"t_3"."NullableValue",
					"t_3"."NotNullableValue",
					"t_3"."VarcharValue",
					"t_3"."NVarcharValue"
				FROM
					"SampleClass" "t_3"
				WHERE
					"t1"."Key_1" = "t_3"."Id"
				ORDER BY
					"t_3"."NotNullableValue" DESC,
					"t_3"."NullableValue" DESC
			) "t6"
	),
	(
		SELECT
			Coalesce(LIST("t7"."NotNullableValue", ', '), '')
		FROM
			(
				SELECT
					"t_4"."Id",
					"t_4"."NullableValue",
					"t_4"."NotNullableValue",
					"t_4"."VarcharValue",
					"t_4"."NVarcharValue"
				FROM
					"SampleClass" "t_4"
				WHERE
					"t1"."Key_1" = "t_4"."Id"
				ORDER BY
					CASE
						WHEN "t_4"."NullableValue" IS NULL THEN 0
						ELSE 1
					END,
					"t_4"."NotNullableValue" DESC,
					"t_4"."NullableValue"
			) "t7"
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

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

