BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."Taxonomy"
FROM
	"Doctor" "p"
WHERE
	Lower("p"."Taxonomy") = 'psychiatry'

