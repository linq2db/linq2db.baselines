BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = ?
LIMIT 2

