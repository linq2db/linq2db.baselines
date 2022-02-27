BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GuidValue_1 Char(36) -- AnsiStringFixedLength
SET     @GuidValue_1 = 'd2f970c0-35ac-4987-9cd5-5badb1757436'
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"p"."ID",
	"p"."MoneyValue",
	"p"."DateTimeValue",
	"p"."BoolValue",
	"p"."GuidValue",
	"p"."BinaryValue",
	"p"."SmallIntValue",
	"p"."StringValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" = ?
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @GuidValue_1 Char(36) -- AnsiStringFixedLength
SET     @GuidValue_1 = '40932fdb-1543-4e4a-ac2c-ca371604fb4b'
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"p"."ID",
	"p"."MoneyValue",
	"p"."DateTimeValue",
	"p"."BoolValue",
	"p"."GuidValue",
	"p"."BinaryValue",
	"p"."SmallIntValue",
	"p"."StringValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" = ?
LIMIT ?

