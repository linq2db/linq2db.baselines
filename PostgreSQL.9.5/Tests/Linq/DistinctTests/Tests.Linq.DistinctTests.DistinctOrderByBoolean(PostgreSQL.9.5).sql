-- PostgreSQL.9.5 PostgreSQL
SELECT DISTINCT
	t."ID",
	t."BoolValue"
FROM
	"LinqDataTypes" t
ORDER BY
	t."BoolValue",
	t."ID"

-- PostgreSQL.9.5 PostgreSQL
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

