-- SapHana.Odbc SapHanaOdbc
SELECT
	"p"."Id",
	"p"."Text"
FROM
	"WhiteSpaceTextRow" "p"
WHERE
	"p"."Text" IS NULL OR LTRIM("p"."Text", '	
                  　') = ''

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Text"
FROM
	"WhiteSpaceTextRow" "t1"

