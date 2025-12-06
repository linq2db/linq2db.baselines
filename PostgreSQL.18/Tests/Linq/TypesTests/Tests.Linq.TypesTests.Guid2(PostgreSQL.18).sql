-- PostgreSQL.18 PostgreSQL

SELECT
	p."ID",
	p."MoneyValue",
	p."DateTimeValue",
	p."BoolValue",
	p."GuidValue",
	p."BinaryValue",
	p."SmallIntValue",
	p."StringValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" = '40932fdb-1543-4e4a-ac2c-ca371604fb4b'::uuid
LIMIT 2

-- PostgreSQL.18 PostgreSQL

SELECT
	p."ID",
	p."MoneyValue",
	p."DateTimeValue",
	p."BoolValue",
	p."GuidValue",
	p."BinaryValue",
	p."SmallIntValue",
	p."StringValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" = 'd2f970c0-35ac-4987-9cd5-5badb1757436'::uuid
LIMIT 2

