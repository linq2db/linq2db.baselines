BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 100500
DECLARE @MoneyValue Numeric(4, 0) -- Decimal
SET     @MoneyValue = 3000
DECLARE @DateTimeValue Timestamp -- DateTime
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2 Timestamp -- DateTime
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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @value2 Integer -- Int32
SET     @value2 = 13621
DECLARE @id Integer -- Int32
SET     @id = 100500

UPDATE
	"LinqDataTypes"
SET
	"SmallIntValue" = Cast(Floor("LinqDataTypes"."MoneyValue" / (:value2 / "LinqDataTypes"."IntValue")) as SmallInt)
WHERE
	"LinqDataTypes"."ID" = :id

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 100500
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."SmallIntValue"
FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" = :id
LIMIT :take

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 100500

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" = :id

