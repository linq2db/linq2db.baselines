-- PostgreSQL.15 PostgreSQL12
SELECT
	(18446744073709551615 - p."ID"::decimal(20))
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

