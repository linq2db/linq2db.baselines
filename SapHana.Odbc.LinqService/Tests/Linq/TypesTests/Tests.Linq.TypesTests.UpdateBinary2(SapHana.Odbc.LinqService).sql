BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = x'0102030405'
DECLARE @p Int -- Int32
SET     @p = 1

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = ?
WHERE
	"t"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = x'0504030201'
DECLARE @p Int -- Int32
SET     @p = 2

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = ?
WHERE
	"t"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

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

