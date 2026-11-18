-- PostgreSQL.19 PostgreSQL12
SELECT
	Power(-2, (Floor(p."ID"::decimal % 3)::Int + 1)::Float)
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.19 PostgreSQL12
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

