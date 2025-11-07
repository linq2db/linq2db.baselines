-- Firebird.5 Firebird4

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
				Coalesce(LIST(Coalesce("t1"."NullableValue", ''), ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"t"."NullableValue"
					FROM
						"SampleClass" "t"
					WHERE
						"t5"."Key_1" = "t"."Id" AND "t"."NullableValue" IS NOT NULL
					ORDER BY
						"t"."NullableValue",
						"t"."Id"
				) "t1"
		) "t2" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST(Coalesce("t3"."NullableValue", ''), ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"t_1"."NullableValue"
					FROM
						"SampleClass" "t_1"
					WHERE
						"t5"."Key_1" = "t_1"."Id"
					ORDER BY
						"t_1"."NullableValue"
				) "t3"
		) "t4" ON 1=1
ORDER BY
	"t5"."Key_1"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

