BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	current_schema
FROM
	"LinqDataTypes" "t1"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE FROM
	"TESTDB"."Issue681Table" "t1"
WHERE
	"t1"."ID" = ?

