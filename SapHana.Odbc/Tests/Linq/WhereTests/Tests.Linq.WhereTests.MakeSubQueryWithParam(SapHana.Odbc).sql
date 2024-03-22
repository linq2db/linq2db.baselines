BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @n  -- Int32
SET     @n = 1

SELECT
	("p"."PersonID" + ?) - 1,
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" + ? = 2

