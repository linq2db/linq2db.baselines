BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	1
FROM
	"Person" "t1"
LIMIT ? OFFSET ?

