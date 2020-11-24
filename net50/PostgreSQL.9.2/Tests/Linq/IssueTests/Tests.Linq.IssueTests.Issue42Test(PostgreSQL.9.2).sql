BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."ID",
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."DateTimeValue2",
	t1."BoolValue",
	t1."GuidValue",
	t1."SmallIntValue",
	t1."IntValue",
	t1."BigIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @MoneyValue Numeric(5, 4) -- Decimal
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue Timestamp -- DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21.100'::timestamp
DECLARE @DateTimeValue2 Timestamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Boolean
SET     @BoolValue = False
DECLARE @GuidValue Uuid -- Guid
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue Smallint -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Bigint -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue Text -- String
SET     @StringValue = NULL
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes"
SET
	"MoneyValue" = :MoneyValue,
	"DateTimeValue" = :DateTimeValue,
	"DateTimeValue2" = :DateTimeValue2,
	"BoolValue" = :BoolValue,
	"GuidValue" = :GuidValue,
	"SmallIntValue" = :SmallIntValue,
	"IntValue" = :IntValue,
	"BigIntValue" = :BigIntValue,
	"StringValue" = :StringValue
WHERE
	"LinqDataTypes"."ID" = :ID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."ID",
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."DateTimeValue2",
	t1."BoolValue",
	t1."GuidValue",
	t1."SmallIntValue",
	t1."IntValue",
	t1."BigIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @MoneyValue Numeric(5, 4) -- Decimal
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue Timestamp -- DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21.100'::timestamp
DECLARE @DateTimeValue2 Timestamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Boolean
SET     @BoolValue = True
DECLARE @GuidValue Uuid -- Guid
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue Smallint -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Bigint -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue Text -- String
SET     @StringValue = NULL
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes"
SET
	"MoneyValue" = :MoneyValue,
	"DateTimeValue" = :DateTimeValue,
	"DateTimeValue2" = :DateTimeValue2,
	"BoolValue" = :BoolValue,
	"GuidValue" = :GuidValue,
	"SmallIntValue" = :SmallIntValue,
	"IntValue" = :IntValue,
	"BigIntValue" = :BigIntValue,
	"StringValue" = :StringValue
WHERE
	"LinqDataTypes"."ID" = :ID

