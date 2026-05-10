-- DB2 DB2.LUW DB2LUW

SELECT
	Coalesce("e"."Str1", '') || '/' || Coalesce("e"."StrReq", '')
FROM
	"ConcatTestEntity" "e"
ORDER BY
	"e"."Id"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Str1",
	"t1"."Str2",
	"t1"."StrReq",
	"t1"."Num"
FROM
	"ConcatTestEntity" "t1"

