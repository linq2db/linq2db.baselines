-- Firebird.2.5 Firebird

SELECT
	"e"."Str1" || "e"."Str2"
FROM
	"SqlConcatTestEntity" "e"
ORDER BY
	"e"."Id"

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Str1",
	"t1"."Str2",
	"t1"."StrReq",
	"t1"."Num"
FROM
	"SqlConcatTestEntity" "t1"

