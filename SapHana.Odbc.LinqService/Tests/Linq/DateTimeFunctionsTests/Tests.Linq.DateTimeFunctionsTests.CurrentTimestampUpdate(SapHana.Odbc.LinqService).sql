BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

UPDATE
	"LinqDataTypes" "p"
SET
	"BoolValue" = 1,
	"DateTimeValue" = CURRENT_TIMESTAMP
WHERE
	"p"."ID" = 100000

