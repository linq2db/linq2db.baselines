-- Firebird.2.5 Firebird

SELECT
	"e"."Id"
FROM
	"SqlConcatTestEntity" "e"
WHERE
	"e"."Num" || '-' || "e"."StrReq" = '100-Programmer'

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Str1",
	"t1"."Str2",
	"t1"."StrReq",
	"t1"."Num"
FROM
	"SqlConcatTestEntity" "t1"

