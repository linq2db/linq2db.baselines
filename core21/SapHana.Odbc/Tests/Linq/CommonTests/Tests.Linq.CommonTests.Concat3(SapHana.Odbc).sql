BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	((("p"."FirstName" || ' ') || Cast(1 as NVarChar(11))) || Cast(2 as NVarChar(11))) = 'John 12'

