BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 2

SELECT
	("p2"."PersonID" * ?) / 2,
	"p2"."FirstName"
FROM
	"Person" "p2"

