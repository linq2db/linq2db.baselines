-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	Coalesce("t"."Str1", '') || Coalesce("t"."Str2", '') || Coalesce("t"."StrReq", '')
FROM
	"ConcatTestEntity" "t"
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
	"ConcatTestEntity" "t1"

