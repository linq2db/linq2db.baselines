BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."ID",
	"r"."MoneyValue",
	"r"."DateTimeValue",
	"r"."DateTimeValue2",
	"r"."BoolValue",
	"r"."GuidValue",
	"r"."SmallIntValue",
	"r"."IntValue",
	"r"."BigIntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 1
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."ID",
	"r"."MoneyValue",
	"r"."DateTimeValue",
	"r"."DateTimeValue2",
	"r"."BoolValue",
	"r"."GuidValue",
	"r"."SmallIntValue",
	"r"."IntValue",
	"r"."BigIntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 1
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21.100'
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue TinyInt(1) -- Byte
SET     @BoolValue = 0
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL
DECLARE @ID Int -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes" "t1"
SET
	"MoneyValue" = ?,
	"DateTimeValue" = ?,
	"DateTimeValue2" = ?,
	"BoolValue" = ?,
	"GuidValue" = ?,
	"SmallIntValue" = ?,
	"IntValue" = ?,
	"BigIntValue" = ?,
	"StringValue" = ?
WHERE
	"t1"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	"r"."ID",
	"r"."MoneyValue",
	"r"."DateTimeValue",
	"r"."DateTimeValue2",
	"r"."BoolValue",
	"r"."GuidValue",
	"r"."SmallIntValue",
	"r"."IntValue",
	"r"."BigIntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = ?
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21.100'
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue TinyInt(1) -- Byte
SET     @BoolValue = 1
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL
DECLARE @ID Int -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes" "t1"
SET
	"MoneyValue" = ?,
	"DateTimeValue" = ?,
	"DateTimeValue2" = ?,
	"BoolValue" = ?,
	"GuidValue" = ?,
	"SmallIntValue" = ?,
	"IntValue" = ?,
	"BigIntValue" = ?,
	"StringValue" = ?
WHERE
	"t1"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."ID",
	"r"."MoneyValue",
	"r"."DateTimeValue",
	"r"."DateTimeValue2",
	"r"."BoolValue",
	"r"."GuidValue",
	"r"."SmallIntValue",
	"r"."IntValue",
	"r"."BigIntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 1
LIMIT 1

