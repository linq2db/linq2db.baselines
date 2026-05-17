-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = ?

