-- Firebird.5 Firebird4

SELECT
	"t1"."Key_1",
	"t1"."NullableDistinct",
	"t1"."NullableDistinctNotNullDistinct",
	(
		SELECT
			Coalesce(LIST(Coalesce("t3"."NullableDistinctNotNullDistinctOrdered", ''), ', '), '')
		FROM
			(
				SELECT
					"t2"."NullableDistinctNotNullDistinctOrdered"
				FROM
					(
						SELECT DISTINCT
							"t"."NullableValue" as "NullableDistinctNotNullDistinctOrdered"
						FROM
							"SampleClass" "t"
						WHERE
							"t1"."Key_1" = "t"."Id" AND "t"."NullableValue" IS NOT NULL
					) "t2"
				ORDER BY
					"t2"."NullableDistinctNotNullDistinctOrdered" DESC
			) "t3"
	),
	"t1"."NotNullableDistinct",
	(
		SELECT
			Coalesce(LIST("t5"."NotNullableDistinctOrdered", ', '), '')
		FROM
			(
				SELECT
					"t4"."NotNullableDistinctOrdered"
				FROM
					(
						SELECT DISTINCT
							"t_1"."NotNullableValue" as "NotNullableDistinctOrdered"
						FROM
							"SampleClass" "t_1"
						WHERE
							"t1"."Key_1" = "t_1"."Id"
					) "t4"
				ORDER BY
					"t4"."NotNullableDistinctOrdered" DESC
			) "t5"
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
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

