BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = x'0102030405'

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = ?
WHERE
	"t"."ID" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."BinaryValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = 1

