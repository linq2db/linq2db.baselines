-- SapHana.Native SapHana
SELECT
	"e"."StrReq"
FROM
	"ConcatTestEntity" "e"
WHERE
	(Coalesce("e"."StrReq", '') || ' 1') = 'Programmer 1'

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Str1",
	"t1"."Str2",
	"t1"."StrReq",
	"t1"."Num"
FROM
	"ConcatTestEntity" "t1"

