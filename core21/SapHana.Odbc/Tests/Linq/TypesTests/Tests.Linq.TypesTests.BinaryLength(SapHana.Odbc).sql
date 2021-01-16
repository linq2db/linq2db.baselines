BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = x'0102030405'

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = ?
WHERE
	"LinqDataTypes"."ID" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @BinaryValue Binary
SET     @BinaryValue = NULL

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = ?
WHERE
	"LinqDataTypes"."ID" = 1

