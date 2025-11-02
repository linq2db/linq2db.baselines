-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
UNION ALL
SELECT
	NULL::Int,
	NULL::decimal,
	NULL::TimeStamp,
	NULL::Boolean,
	NULL::uuid,
	NULL::bytea,
	NULL::SmallInt,
	NULL::text
FROM
	"LinqDataTypes" d

