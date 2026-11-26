-- PostgreSQL.13 PostgreSQL12
SELECT
	(p."ID" * 7 + 1) / 2
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	(p."ID" * -7 - 1) / 2
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	(p."ID" * 7 + 1) / (p."ID" - 100)
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	(p."ID"::BigInt * 9 + 2) / 4
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	(p."ID"::BigInt * 7 + 1) / 2
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	Floor((p."ID"::decimal(20) * 9 + 2) / 4)
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	p."ID"
FROM
	"LinqDataTypes" p
WHERE
	Floor((p."ID"::decimal(20) * 9 + 2) / 4) * 4 = p."ID"::decimal(20) * 9 + 2
ORDER BY
	p."ID"

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	(p."ID" * 7 + 1) / 2
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
DECLARE @divisor Integer -- Int32
SET     @divisor = 4

SELECT
	(p."ID" * 9 + 2) / :divisor
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	-(p."ID" * 7 + 1)
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	p."ID"
FROM
	"LinqDataTypes" p
WHERE
	((p."ID" * 7 + 1) / 2) * 2 = p."ID" * 7 + 1
ORDER BY
	p."ID"

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	((p."ID" * 7 + 1) / 2)::text
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	p."ID"::Float / 2
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	p."ID"::decimal / 2
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.13 PostgreSQL12
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

