-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	"t"."Str1" || "t"."Str2" || "t"."StrReq"
FROM
	"SqlConcatTestEntity" "t"
ORDER BY
	"t"."Id"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Str1",
	"t1"."Str2",
	"t1"."StrReq",
	"t1"."Num"
FROM
	"SqlConcatTestEntity" "t1"

