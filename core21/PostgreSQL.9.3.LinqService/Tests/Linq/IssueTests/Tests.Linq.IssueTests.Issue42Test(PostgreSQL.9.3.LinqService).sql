BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
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
-- PostgreSQL.9.3 PostgreSQL
DECLARE @MoneyValue Numeric(5,4) -- Decimal
SET     @MoneyValue = 2.4900
DECLARE @DateTimeValue Timestamp -- DateTime
SET     @DateTimeValue = '2005-05-15 05:15:25.500'::timestamp
DECLARE @DateTimeValue2 Timestamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Boolean
SET     @BoolValue = True
DECLARE @GuidValue Uuid -- Guid
SET     @GuidValue = 'bc663a61-7b40-4681-ac38-f9aaf55b706b'
DECLARE @SmallIntValue Smallint -- Int16
SET     @SmallIntValue = 2
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Bigint -- Int64
SET     @BigIntValue = 2
DECLARE @StringValue Text -- String
SET     @StringValue = ''
DECLARE @ID Integer -- Int32
SET     @ID = 2

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
-- PostgreSQL.9.3 PostgreSQL
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
-- PostgreSQL.9.3 PostgreSQL
DECLARE @MoneyValue Numeric(5,4) -- Decimal
SET     @MoneyValue = 2.4900
DECLARE @DateTimeValue Timestamp -- DateTime
SET     @DateTimeValue = '2005-05-15 05:15:25.500'::timestamp
DECLARE @DateTimeValue2 Timestamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Boolean
SET     @BoolValue = False
DECLARE @GuidValue Uuid -- Guid
SET     @GuidValue = 'bc663a61-7b40-4681-ac38-f9aaf55b706b'
DECLARE @SmallIntValue Smallint -- Int16
SET     @SmallIntValue = 2
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Bigint -- Int64
SET     @BigIntValue = 2
DECLARE @StringValue Text -- String
SET     @StringValue = ''
DECLARE @ID Integer -- Int32
SET     @ID = 2

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

