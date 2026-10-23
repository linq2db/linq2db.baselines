-- SapHana.Odbc SapHanaOdbc
UPDATE
	"InheritanceFilter" "t"
SET
	"Code" = "t"."Code",
	"Child2Field" = 88
WHERE
	"t"."Id" = 2

-- SapHana.Odbc SapHanaOdbc
SELECT
	"c_1"."Id",
	"c_1"."Code",
	"c_1"."Child2Field"
FROM
	"InheritanceFilter" "c_1"
WHERE
	"c_1"."Code" IN (22, 21, 2) AND "c_1"."Id" = 2
LIMIT 2

