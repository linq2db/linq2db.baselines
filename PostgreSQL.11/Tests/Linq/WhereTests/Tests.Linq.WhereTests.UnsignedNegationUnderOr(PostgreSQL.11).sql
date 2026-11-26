-- PostgreSQL.11 PostgreSQL
SELECT
	p."ID"::BigInt | (4294967295 - (p."ID" + 4)::BigInt)::BigInt
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.11 PostgreSQL
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

