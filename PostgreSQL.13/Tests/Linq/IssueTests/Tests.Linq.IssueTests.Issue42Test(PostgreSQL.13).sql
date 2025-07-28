BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."ID",
	r."MoneyValue",
	r."DateTimeValue",
	r."DateTimeValue2",
	r."BoolValue",
	r."GuidValue",
	r."SmallIntValue",
	r."IntValue",
	r."BigIntValue",
	r."StringValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."ID",
	r."MoneyValue",
	r."DateTimeValue",
	r."DateTimeValue2",
	r."BoolValue",
	r."GuidValue",
	r."SmallIntValue",
	r."IntValue",
	r."BigIntValue",
	r."StringValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @MoneyValue Numeric(5, 4) -- Decimal
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue Timestamp -- DateTime2
SET     @DateTimeValue = '2001-01-11 01:11:21.100'::timestamp
DECLARE @DateTimeValue2 Timestamp -- DateTime2
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Boolean
SET     @BoolValue = False
DECLARE @GuidValue Uuid -- Guid
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'::uuid
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	r."ID",
	r."MoneyValue",
	r."DateTimeValue",
	r."DateTimeValue2",
	r."BoolValue",
	r."GuidValue",
	r."SmallIntValue",
	r."IntValue",
	r."BigIntValue",
	r."StringValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = :ID
LIMIT 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @MoneyValue Numeric(5, 4) -- Decimal
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue Timestamp -- DateTime2
SET     @DateTimeValue = '2001-01-11 01:11:21.100'::timestamp
DECLARE @DateTimeValue2 Timestamp -- DateTime2
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Boolean
SET     @BoolValue = True
DECLARE @GuidValue Uuid -- Guid
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'::uuid
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."ID",
	r."MoneyValue",
	r."DateTimeValue",
	r."DateTimeValue2",
	r."BoolValue",
	r."GuidValue",
	r."SmallIntValue",
	r."IntValue",
	r."BigIntValue",
	r."StringValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 1
LIMIT 1

