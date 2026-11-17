-- PostgreSQL.15 PostgreSQL12
SELECT
	Power((p."ID" * 2)::Float, 2)
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.15 PostgreSQL12
SELECT
	Power((p."ID" + 1)::Float, 2)
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.15 PostgreSQL12
SELECT
	Power((100 - p."ID")::Float, 2)
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.15 PostgreSQL12
SELECT
	Power((-p."ID")::Float, 2)
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.15 PostgreSQL12
SELECT
	-Power(p."ID"::Float, 2)
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.15 PostgreSQL12
SELECT
	Power(p."ID"::Float, -1)
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.15 PostgreSQL12
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

