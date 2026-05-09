-- SapHana.Odbc SapHanaOdbc

SELECT
	"e"."StrReq"
FROM
	"SqlConcatTestEntity" "e"
WHERE
	"e"."StrReq" || ' I' = 'Programmer I'

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Str1",
	"t1"."Str2",
	"t1"."StrReq",
	"t1"."Num"
FROM
	"SqlConcatTestEntity" "t1"

