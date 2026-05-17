-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT DISTINCT
	True,
	it."SmallIntValue" <> 0
FROM
	"LinqDataTypes" it

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

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

