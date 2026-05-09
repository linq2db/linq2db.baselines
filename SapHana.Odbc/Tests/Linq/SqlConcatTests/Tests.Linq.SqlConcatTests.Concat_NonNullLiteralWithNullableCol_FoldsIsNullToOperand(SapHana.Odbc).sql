-- SapHana.Odbc SapHanaOdbc

SELECT
	"e"."Id"
FROM
	"SqlConcatTestEntity" "e"
WHERE
	"e"."Str2" IS NULL

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Str1",
	"t1"."Str2",
	"t1"."StrReq",
	"t1"."Num"
FROM
	"SqlConcatTestEntity" "t1"

