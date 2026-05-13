-- Firebird.2.5 Firebird

SELECT
	"e"."Id"
FROM
	"ConcatTestEntity" "e"
WHERE
	(Coalesce("e"."StrReq", '') || ' I') = 'Programmer I'

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Str1",
	"t1"."Str2",
	"t1"."StrReq",
	"t1"."Num"
FROM
	"ConcatTestEntity" "t1"

