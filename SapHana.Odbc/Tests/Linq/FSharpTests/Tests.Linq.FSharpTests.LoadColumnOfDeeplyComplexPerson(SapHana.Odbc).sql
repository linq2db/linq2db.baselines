BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1

SELECT
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = ?
LIMIT 2

