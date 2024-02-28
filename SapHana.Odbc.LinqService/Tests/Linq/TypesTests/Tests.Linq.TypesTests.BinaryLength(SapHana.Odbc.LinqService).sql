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
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	Length("t"."BinaryValue")
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = 1
LIMIT ?

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

