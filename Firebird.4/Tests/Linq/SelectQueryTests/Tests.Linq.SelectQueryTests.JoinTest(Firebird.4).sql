-- Firebird.4 Firebird4
SELECT
	"t"."Id",
	"t"."Value",
	"s"."Key_1",
	"s"."SecondValue"
FROM
	"SampleClass" "t"
		INNER JOIN (
			SELECT
				1 as "Key_1",
				3 as "SecondValue"
			FROM rdb$database
		) "s" ON 1 = "t"."Id"

