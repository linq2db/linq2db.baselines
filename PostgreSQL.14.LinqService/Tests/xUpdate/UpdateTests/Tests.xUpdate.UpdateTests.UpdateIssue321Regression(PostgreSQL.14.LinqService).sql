BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 100500
DECLARE @MoneyValue Numeric(4, 0) -- Decimal
SET     @MoneyValue = 3000
DECLARE @DateTimeValue Timestamp -- DateTime2
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2 Timestamp -- DateTime2
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Boolean
SET     @BoolValue = NULL
DECLARE @GuidValue Uuid -- Guid
SET     @GuidValue = NULL
DECLARE @SmallIntValue Smallint -- Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue Integer -- Int32
SET     @IntValue = 60
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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @value2 Numeric(5, 0) -- Decimal
SET     @value2 = 13621
DECLARE @id Integer -- Int32
SET     @id = 100500

UPDATE
	"LinqDataTypes"
SET
	"SmallIntValue" = Floor("LinqDataTypes"."MoneyValue" / (:value2 / "LinqDataTypes"."IntValue"))::SmallInt
WHERE
	"LinqDataTypes"."ID" = :id

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 100500

SELECT
	t1."SmallIntValue"
FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" = :id
LIMIT 1

