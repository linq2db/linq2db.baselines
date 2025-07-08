BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."Id",
	"t"."Value",
	"s_1"."Key_1",
	"s_1"."SecondValue"
FROM
	"SampleClass" "t"
		CROSS JOIN LATERAL (
			SELECT
				"s"."Key_1",
				"s"."SecondValue"
			FROM
				(
					SELECT
						1 as "Key_1",
						3 as "SecondValue"
					FROM rdb$database
					WHERE
						1 = "t"."Id"
				) "s"
		) "s_1"

