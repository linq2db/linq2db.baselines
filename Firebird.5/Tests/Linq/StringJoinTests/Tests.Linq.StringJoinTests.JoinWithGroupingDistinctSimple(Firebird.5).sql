-- Firebird.5 Firebird4

SELECT
	"t6"."Key_1",
	"t2"."Join_1",
	"t5"."Join_1"
FROM
	(
		SELECT
			"g_1"."Id" as "Key_1"
		FROM
			"SampleClass" "g_1"
		GROUP BY
			"g_1"."Id"
	) "t6"
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST(DISTINCT Coalesce("t1"."NullableValue", ''), ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"t"."NullableValue"
					FROM
						"SampleClass" "t"
					WHERE
						"t6"."Key_1" = "t"."Id" AND "t"."NullableValue" IS NOT NULL
					ORDER BY
						"t"."NullableValue",
						"t"."Id"
				) "t1"
		) "t2" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST(DISTINCT "t4"."c1", ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"t3"."c1"
					FROM
						(
							SELECT
								Coalesce("x"."NullableValue", '') as "c1"
							FROM
								"SampleClass" "x"
							WHERE
								"t6"."Key_1" = "x"."Id"
						) "t3"
					ORDER BY
						"t3"."c1"
				) "t4"
		) "t5" ON 1=1
ORDER BY
	"t6"."Key_1"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

