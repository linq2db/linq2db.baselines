BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"Person" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	1
FROM
	"Person" "_"
LIMIT 4200000000 OFFSET ?

