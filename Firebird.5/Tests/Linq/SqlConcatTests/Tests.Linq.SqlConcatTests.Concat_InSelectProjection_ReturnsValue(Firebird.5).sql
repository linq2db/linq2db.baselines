-- Firebird.5 Firebird4

SELECT
	"e"."Str1" || '/' || "e"."StrReq"
FROM
	"SqlConcatTestEntity" "e"
ORDER BY
	"e"."Id"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Str1",
	"t1"."Str2",
	"t1"."StrReq",
	"t1"."Num"
FROM
	"SqlConcatTestEntity" "t1"

