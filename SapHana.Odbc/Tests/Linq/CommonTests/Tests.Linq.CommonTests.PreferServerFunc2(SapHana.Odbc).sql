BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 0

SELECT
	Length("p"."FirstName") + ?
FROM
	"Person" "p"

