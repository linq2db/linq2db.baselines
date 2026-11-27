-- PostgreSQL.18 PostgreSQL12
SELECT
	p."ID"::BigInt & 4294967289::BigInt
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.18 PostgreSQL12
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

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."ID"::BigInt | 2147483649::BigInt
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.18 PostgreSQL12
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

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."ID"::BigInt # 4294967295::BigInt
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.18 PostgreSQL12
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

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."ID"::BigInt & 2147483648::BigInt
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.18 PostgreSQL12
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

-- PostgreSQL.18 PostgreSQL12
SELECT
	t."U" & 4294967289::BigInt
FROM
	"UnsignedColumnTable" t
ORDER BY
	t."Id"

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."U"
FROM
	"UnsignedColumnTable" t1

