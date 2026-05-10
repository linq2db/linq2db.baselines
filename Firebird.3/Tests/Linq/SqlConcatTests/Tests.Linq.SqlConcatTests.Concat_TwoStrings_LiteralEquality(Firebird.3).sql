-- Firebird.3 Firebird3

SELECT
	"e"."StrReq"
FROM
	"SqlConcatTestEntity" "e"
WHERE
	"e"."StrReq" || ' I' = 'Programmer I'

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Str1",
	"t1"."Str2",
	"t1"."StrReq",
	"t1"."Num"
FROM
	"SqlConcatTestEntity" "t1"

