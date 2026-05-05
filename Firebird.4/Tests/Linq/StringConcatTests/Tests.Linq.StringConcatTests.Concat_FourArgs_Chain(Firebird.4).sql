-- Firebird.4 Firebird4

SELECT
	"e"."Id"
FROM
	"ConcatTestEntity" "e"
WHERE
	Coalesce("e"."Str1", '') || ' ' || Coalesce("e"."StrReq", '') || '!' = 'John Programmer!'

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Str1",
	"t1"."Str2",
	"t1"."StrReq",
	"t1"."Num"
FROM
	"ConcatTestEntity" "t1"

