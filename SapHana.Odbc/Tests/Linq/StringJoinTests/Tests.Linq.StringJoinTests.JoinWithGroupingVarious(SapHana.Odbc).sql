-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Key_1",
	(
		SELECT
			Coalesce(STRING_AGG(Coalesce("t2"."NullableDistinct", ''), ', '), '')
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
			Coalesce(STRING_AGG(Coalesce("t3"."NullableDistinctNotNullDistinct", ''), ', '), '')
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
			Coalesce(STRING_AGG(Coalesce("t4"."NullableDistinctNotNullDistinctOrdered", ''), ', ' ORDER BY "t4"."NullableDistinctNotNullDistinctOrdered" DESC NULLS FIRST), '')
		FROM
			(
				SELECT DISTINCT
					"t_2"."NullableValue" as "NullableDistinctNotNullDistinctOrdered"
				FROM
					"SampleClass" "t_2"
				WHERE
					"t1"."Key_1" = "t_2"."Id" AND "t_2"."NullableValue" IS NOT NULL
			) "t4"
	),
	(
		SELECT
			Coalesce(STRING_AGG("t5"."NotNullableDistinct", ', '), '')
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
			Coalesce(STRING_AGG("t6"."NotNullableDistinctOrdered", ', ' ORDER BY "t6"."NotNullableDistinctOrdered" DESC NULLS FIRST), '')
		FROM
			(
				SELECT DISTINCT
					"t_4"."NotNullableValue" as "NotNullableDistinctOrdered"
				FROM
					"SampleClass" "t_4"
				WHERE
					"t1"."Key_1" = "t_4"."Id"
			) "t6"
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

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

