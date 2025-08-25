BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	1
FROM
	"Person" "t1"
LIMIT 4200000000 OFFSET ?

