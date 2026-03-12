-- Firebird.5 Firebird4

SELECT
	"t1"."Key_1",
	"t1"."NullableDistinct",
	"t1"."NullableDistinctNotNullDistinct",
	(
		SELECT
			Coalesce(LIST(Coalesce("t2"."NullableDistinctNotNullDistinctOrdered", ''), ', '), '')
		FROM
			(
				SELECT DISTINCT
					"t"."NullableValue" as "NullableDistinctNotNullDistinctOrdered"
				FROM
					"SampleClass" "t"
				WHERE
					"t1"."Key_1" = "t"."Id" AND "t"."NullableValue" IS NOT NULL
				ORDER BY
					"t"."NullableValue" DESC
			) "t2"
	),
	"t1"."NotNullableDistinct",
	(
		SELECT
			Coalesce(LIST("t3"."NotNullableDistinctOrdered", ', '), '')
		FROM
			(
				SELECT DISTINCT
					"t_1"."NotNullableValue" as "NotNullableDistinctOrdered"
				FROM
					"SampleClass" "t_1"
				WHERE
					"t1"."Key_1" = "t_1"."Id"
				ORDER BY
					"t_1"."NotNullableValue" DESC
			) "t3"
	)
FROM
	(
		SELECT
			"g_1"."Id" as "Key_1",
			LIST(DISTINCT Coalesce("g_1"."NullableValue", ''), ', ') as "NullableDistinct",
			Coalesce(LIST(DISTINCT "g_1"."NullableValue", ', '), '') as "NullableDistinctNotNullDistinct",
			LIST(DISTINCT "g_1"."NotNullableValue", ', ') as "NotNullableDistinct"
		FROM
			"SampleClass" "g_1"
		GROUP BY
			"g_1"."Id"
	) "t1"
ORDER BY
	"t1"."Key_1"

-- Firebird.5 Firebird4

SELECT
	"t1".PK,
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

