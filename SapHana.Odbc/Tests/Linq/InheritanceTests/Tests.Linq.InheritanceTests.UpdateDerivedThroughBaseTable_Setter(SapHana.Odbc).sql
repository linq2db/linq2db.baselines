-- SapHana.Odbc SapHanaOdbc
UPDATE
	"InheritanceFilter" "t"
SET
	"Code" = "t"."Code",
	"Child1Field" = 99
WHERE
	"t"."Id" = 1

-- SapHana.Odbc SapHanaOdbc
SELECT
	"c_1"."Id",
	"c_1"."Code",
	"c_1"."Child1Field"
FROM
	"InheritanceFilter" "c_1"
WHERE
	"c_1"."Code" IN (12, 11, 1) AND "c_1"."Id" = 1
LIMIT 2

