BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = x'0102030405'
DECLARE @ID  -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = ?
WHERE
	"t"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = x'0504030201'
DECLARE @ID  -- Int32
SET     @ID = 2

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = ?
WHERE
	"t"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."ID",
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."BinaryValue",
	"t"."SmallIntValue",
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" IN (1, 2)

