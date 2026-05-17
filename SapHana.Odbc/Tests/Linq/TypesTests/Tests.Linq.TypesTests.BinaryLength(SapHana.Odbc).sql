-- SapHana.Odbc SapHanaOdbc
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = x'0102030405'

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = ?
WHERE
	"t"."ID" = 1

-- SapHana.Odbc SapHanaOdbc

SELECT
	Length("t"."BinaryValue")
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = 1
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
DECLARE @BinaryValue VarBinary -- Binary
SET     @BinaryValue = NULL

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = ?
WHERE
	"t"."ID" = 1

