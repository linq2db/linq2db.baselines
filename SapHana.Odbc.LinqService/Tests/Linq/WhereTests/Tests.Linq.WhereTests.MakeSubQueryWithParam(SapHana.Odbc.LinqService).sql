BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @n Int -- Int32
SET     @n = 1
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	("p"."PersonID" + ?) - 1,
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" + ? = 2

