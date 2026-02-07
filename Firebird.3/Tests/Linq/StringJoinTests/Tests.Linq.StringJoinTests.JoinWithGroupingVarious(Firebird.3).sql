-- Firebird.3 Firebird3

SELECT
	"t1"."Key_1",
	(
		SELECT
			Coalesce(LIST(Coalesce("t2"."NullableDistinct", ''), ', '), '')
		FROM
			(
				SELECT DISTINCT
					"t"."NullableValue" as "NullableDistinct"
				FROM
					"SampleClass" "t"
				WHERE
					"t1"."Key_1" = "t"."Id"
			) "t2"
	),
	(
		SELECT
			Coalesce(LIST(Coalesce("t3"."NullableDistinctNotNullDistinct", ''), ', '), '')
		FROM
			(
				SELECT DISTINCT
					"t_1"."NullableValue" as "NullableDistinctNotNullDistinct"
				FROM
					"SampleClass" "t_1"
				WHERE
					"t1"."Key_1" = "t_1"."Id" AND "t_1"."NullableValue" IS NOT NULL
			) "t3"
	),
	(
		SELECT
			Coalesce(LIST(Coalesce("t4"."NullableDistinctNotNullDist", ''), ', '), '')
		FROM
			(
				SELECT DISTINCT
					"t_2"."NullableValue" as "NullableDistinctNotNullDist"
				FROM
					"SampleClass" "t_2"
				WHERE
					"t1"."Key_1" = "t_2"."Id" AND "t_2"."NullableValue" IS NOT NULL
				ORDER BY
					"t_2"."NullableValue" DESC
			) "t4"
	),
	(
		SELECT
			Coalesce(LIST("t5"."NotNullableDistinct", ', '), '')
		FROM
			(
				SELECT DISTINCT
					"t_3"."NotNullableValue" as "NotNullableDistinct"
				FROM
					"SampleClass" "t_3"
				WHERE
					"t1"."Key_1" = "t_3"."Id"
			) "t5"
	),
	(
		SELECT
			Coalesce(LIST("t6"."NotNullableDistinctOrdered", ', '), '')
		FROM
			(
				SELECT DISTINCT
					"t_4"."NotNullableValue" as "NotNullableDistinctOrdered"
				FROM
					"SampleClass" "t_4"
				WHERE
					"t1"."Key_1" = "t_4"."Id"
				ORDER BY
					"t_4"."NotNullableValue" DESC
			) "t6"
	)
FROM
	(
		SELECT DISTINCT
			"g_1"."Id" as "Key_1"
		FROM
			"SampleClass" "g_1"
	) "t1"
ORDER BY
	"t1"."Key_1"

-- Firebird.3 Firebird3

SELECT
	"t1".PK,
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

