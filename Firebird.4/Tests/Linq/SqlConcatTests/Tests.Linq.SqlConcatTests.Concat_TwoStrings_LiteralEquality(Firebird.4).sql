-- Firebird.4 Firebird4

SELECT
	"e"."StrReq"
FROM
	"SqlConcatTestEntity" "e"
WHERE
	"e"."StrReq" || ' I' = 'Programmer I'

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Str1",
	"t1"."Str2",
	"t1"."StrReq",
	"t1"."Num"
FROM
	"SqlConcatTestEntity" "t1"

