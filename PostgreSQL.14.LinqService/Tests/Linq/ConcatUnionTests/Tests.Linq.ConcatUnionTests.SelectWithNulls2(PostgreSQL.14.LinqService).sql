BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

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
UNION ALL
SELECT
	NULL::Int,
	NULL::decimal,
	NULL::TimeStamp,
	NULL::TimeStamp,
	NULL::Boolean,
	NULL::uuid,
	NULL::SmallInt,
	NULL::Int,
	NULL::BigInt,
	NULL::text
FROM
	"LinqDataTypes" d

