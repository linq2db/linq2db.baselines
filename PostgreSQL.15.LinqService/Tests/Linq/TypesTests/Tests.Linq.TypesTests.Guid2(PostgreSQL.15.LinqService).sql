BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Uuid -- Guid
SET     @p = '40932fdb-1543-4e4a-ac2c-ca371604fb4b'::uuid

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
	p."GuidValue" = :p
LIMIT 2

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Uuid -- Guid
SET     @p = 'd2f970c0-35ac-4987-9cd5-5badb1757436'::uuid

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
	p."GuidValue" = :p
LIMIT 2

