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
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO "LINKED_DB"."TESTDB"."Issue681Table"
(
	"ID",
	"Value"
)
VALUES
(
	?,
	?
)

