-- DB2 DB2.LUW DB2LUW
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
			FROM SYSIBM.SYSDUMMY1
		) "s" ON 1 = "t"."Id"

