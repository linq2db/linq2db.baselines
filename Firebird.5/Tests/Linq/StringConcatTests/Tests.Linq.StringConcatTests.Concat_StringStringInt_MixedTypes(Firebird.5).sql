-- Firebird.5 Firebird4

SELECT
	"e"."StrReq"
FROM
	"ConcatTestEntity" "e"
WHERE
	(Coalesce("e"."StrReq", '') || ' 1') = 'Programmer 1'

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Str1",
	"t1"."Str2",
	"t1"."StrReq",
	"t1"."Num"
FROM
	"ConcatTestEntity" "t1"

