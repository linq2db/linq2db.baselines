BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1000
DECLARE @MoneyValue Numeric(1, 0) -- Decimal
SET     @MoneyValue = 0::decimal(1)
DECLARE @DateTimeValue Timestamp -- DateTime2
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2 Timestamp -- DateTime2
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Boolean
SET     @BoolValue = False
DECLARE @GuidValue Uuid -- Guid
SET     @GuidValue = NULL
DECLARE @SmallIntValue Smallint -- Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Bigint -- Int64
SET     @BigIntValue = NULL
DECLARE @StringValue Text -- String
SET     @StringValue = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"MoneyValue",
	"DateTimeValue",
	"DateTimeValue2",
	"BoolValue",
	"GuidValue",
	"SmallIntValue",
	"IntValue",
	"BigIntValue",
	"StringValue"
)
VALUES
(
	:ID,
	:MoneyValue,
	:DateTimeValue,
	:DateTimeValue2,
	:BoolValue,
	:GuidValue,
	:SmallIntValue,
	:IntValue,
	:BigIntValue,
	:StringValue
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."BoolValue",
	t1."GuidValue",
	t1."BinaryValue",
	t1."SmallIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" = 1000
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" = 1000

