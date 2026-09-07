-- SapHana.Odbc SapHanaOdbc
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = x'0102030405'
DECLARE @ints Int -- Int32
SET     @ints = 1

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = ?
WHERE
	"t"."ID" = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = x'0504030201'
DECLARE @ints Int -- Int32
SET     @ints = 2

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = ?
WHERE
	"t"."ID" = ?

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

