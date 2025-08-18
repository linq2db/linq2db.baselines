BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	current_schema
FROM
	"LinqDataTypes" "t1"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	"LINKED_DB"."TESTDB"."Issue681Table" "t1"
SET
	"Value" = ?
WHERE
	"t1"."ID" = ?

