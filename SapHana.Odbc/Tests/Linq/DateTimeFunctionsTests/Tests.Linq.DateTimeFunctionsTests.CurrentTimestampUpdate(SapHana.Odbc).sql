BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 1

UPDATE
	"LinqDataTypes" "p"
SET
	"BoolValue" = ?,
	"DateTimeValue" = CURRENT_TIMESTAMP
WHERE
	"p"."ID" = 100000

