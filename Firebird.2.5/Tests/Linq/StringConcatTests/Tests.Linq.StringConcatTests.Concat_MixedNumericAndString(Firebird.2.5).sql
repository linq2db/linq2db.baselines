-- Firebird.2.5 Firebird

SELECT
	"e"."Id"
FROM
	"ConcatTestEntity" "e"
WHERE
	("e"."Num" || '-' || Coalesce("e"."StrReq", '')) = '100-Programmer'

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Str1",
	"t1"."Str2",
	"t1"."StrReq",
	"t1"."Num"
FROM
	"ConcatTestEntity" "t1"

