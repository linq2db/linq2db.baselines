-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id",
	"t"."Value",
	"s"."c1"
FROM
	"SampleClass" "t"
		INNER JOIN (
			SELECT
				1 as "c1"
			FROM SYSIBM.SYSDUMMY1
		) "s" ON 1 = "t"."Id"

