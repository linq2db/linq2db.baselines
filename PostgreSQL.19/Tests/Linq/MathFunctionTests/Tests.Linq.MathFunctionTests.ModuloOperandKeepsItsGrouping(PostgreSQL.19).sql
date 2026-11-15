-- PostgreSQL.19 PostgreSQL12
SELECT
	Floor((p."ID" + 5)::decimal % 3)::Int
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

-- PostgreSQL.19 PostgreSQL12
SELECT
	Floor((100 - p."ID")::decimal % 3)::Int
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

