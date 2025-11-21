-- Firebird.2.5 Firebird

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
					"t1"."Key_1" = "t"."Id" AND "t"."NullableValue" IS NOT NULL
				ORDER BY
					"t"."NullableValue"
			) "t2"
	),
	(
		SELECT
			Coalesce(LIST("t4"."c1", ', '), '')
		FROM
			(
				SELECT DISTINCT
					"t3"."c1"
				FROM
					(
						SELECT
							Coalesce("x"."NullableValue", '') as "c1"
						FROM
							"SampleClass" "x"
						WHERE
							"t1"."Key_1" = "x"."Id"
					) "t3"
				ORDER BY
					"t3"."c1"
			) "t4"
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

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

