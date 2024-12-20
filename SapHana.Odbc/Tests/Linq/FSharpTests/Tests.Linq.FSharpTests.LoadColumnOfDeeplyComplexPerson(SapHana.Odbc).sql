BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = ?
LIMIT 2

