-- PostgreSQL.11 PostgreSQL
SELECT DISTINCT
	t."ID",
	t."BoolValue"
FROM
	"LinqDataTypes" t
ORDER BY
	t."BoolValue",
	t."ID"

-- PostgreSQL.11 PostgreSQL
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

