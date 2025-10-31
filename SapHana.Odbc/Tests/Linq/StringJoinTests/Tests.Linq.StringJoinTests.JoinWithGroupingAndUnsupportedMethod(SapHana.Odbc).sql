BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t5"."Key_1",
	"t2"."Join_1",
	"t4"."Join_1"
FROM
	(
		SELECT
			"g_1"."Id" as "Key_1"
		FROM
			"SampleClass" "g_1"
		GROUP BY
			"g_1"."Id"
	) "t5"
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(STRING_AGG(Coalesce("t1"."NullableValue", ''), ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"x"."NullableValue"
					FROM
						"SampleClass" "x"
					WHERE
						"t5"."Key_1" = "x"."Id"
					ORDER BY
						"x"."NotNullableValue"
					LIMIT 2
				) "t1"
		) "t2" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(STRING_AGG("t3"."NotNullableValue", ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"x_1"."NotNullableValue"
					FROM
						"SampleClass" "x_1"
					WHERE
						"t5"."Key_1" = "x_1"."Id"
					ORDER BY
						"x_1"."NotNullableValue"
					LIMIT 2
				) "t3"
		) "t4" ON 1=1
ORDER BY
	"t5"."Key_1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

