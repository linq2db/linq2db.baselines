BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = x'0102030405'
DECLARE @ID  -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = ?
WHERE
	"LinqDataTypes"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = x'0504030201'
DECLARE @ID  -- Int32
SET     @ID = 2

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = ?
WHERE
	"LinqDataTypes"."ID" = ?

