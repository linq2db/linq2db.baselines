BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	1 = 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = ?

