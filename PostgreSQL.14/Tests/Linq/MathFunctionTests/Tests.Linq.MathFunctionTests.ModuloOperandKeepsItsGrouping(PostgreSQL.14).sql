-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	Floor((p."ID" + 5)::decimal % 3)::Int
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	Floor((100 - p."ID")::decimal % 3)::Int
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	100 - Floor(p."ID"::decimal % 3)::Int
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	Floor((p."ID" + 20)::decimal % Floor((p."ID" * 5 + 3)::decimal % 5)::Int)::Int
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	Floor((p."ID" + 20)::decimal % (p."ID" * 3))::Int
FROM
	"LinqDataTypes" p
WHERE
	p."ID" > 0
ORDER BY
	p."ID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
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

