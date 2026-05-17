-- DB2 DB2.LUW DB2LUW

SELECT
	"e"."Id"
FROM
	"ConcatTestEntity" "e"
WHERE
	(RTrim(Char("e"."Num")) || '-' || Coalesce("e"."StrReq", '')) = '100-Programmer'

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Str1",
	"t1"."Str2",
	"t1"."StrReq",
	"t1"."Num"
FROM
	"ConcatTestEntity" "t1"

