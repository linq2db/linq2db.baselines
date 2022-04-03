BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"t1"."ID",
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."DateTimeValue2",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."SmallIntValue",
	"t1"."IntValue",
	"t1"."BigIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 2.4900
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = '2005-05-15 05:15:25.500'
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 1
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = 'bc663a61-7b40-4681-ac38-f9aaf55b706b'
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 2
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
SET     @BigIntValue = 2
DECLARE @StringValue NVarChar -- String
SET     @StringValue = ''
DECLARE @ID  -- Int32
SET     @ID = 2

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."MoneyValue" = ?,
	"LinqDataTypes"."DateTimeValue" = ?,
	"LinqDataTypes"."DateTimeValue2" = ?,
	"LinqDataTypes"."BoolValue" = ?,
	"LinqDataTypes"."GuidValue" = ?,
	"LinqDataTypes"."SmallIntValue" = ?,
	"LinqDataTypes"."IntValue" = ?,
	"LinqDataTypes"."BigIntValue" = ?,
	"LinqDataTypes"."StringValue" = ?
WHERE
	"LinqDataTypes"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"t1"."ID",
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."DateTimeValue2",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."SmallIntValue",
	"t1"."IntValue",
	"t1"."BigIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 2.4900
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = '2005-05-15 05:15:25.500'
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 0
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = 'bc663a61-7b40-4681-ac38-f9aaf55b706b'
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 2
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
SET     @BigIntValue = 2
DECLARE @StringValue NVarChar -- String
SET     @StringValue = ''
DECLARE @ID  -- Int32
SET     @ID = 2

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."MoneyValue" = ?,
	"LinqDataTypes"."DateTimeValue" = ?,
	"LinqDataTypes"."DateTimeValue2" = ?,
	"LinqDataTypes"."BoolValue" = ?,
	"LinqDataTypes"."GuidValue" = ?,
	"LinqDataTypes"."SmallIntValue" = ?,
	"LinqDataTypes"."IntValue" = ?,
	"LinqDataTypes"."BigIntValue" = ?,
	"LinqDataTypes"."StringValue" = ?
WHERE
	"LinqDataTypes"."ID" = ?

