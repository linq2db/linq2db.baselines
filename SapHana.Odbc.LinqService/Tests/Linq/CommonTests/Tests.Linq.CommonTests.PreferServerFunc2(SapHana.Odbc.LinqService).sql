BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Length Int -- Int32
SET     @Length = 0

SELECT
	Length("p"."FirstName") + ?
FROM
	"Person" "p"

