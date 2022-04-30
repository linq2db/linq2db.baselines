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

SELECT
	"t"."BinaryValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = 1

