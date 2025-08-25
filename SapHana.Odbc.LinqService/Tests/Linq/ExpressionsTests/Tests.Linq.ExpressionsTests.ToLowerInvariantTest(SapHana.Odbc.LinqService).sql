BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Lower("p"."Taxonomy")
FROM
	"Doctor" "p"
WHERE
	Lower("p"."Taxonomy") = 'psychiatry'

