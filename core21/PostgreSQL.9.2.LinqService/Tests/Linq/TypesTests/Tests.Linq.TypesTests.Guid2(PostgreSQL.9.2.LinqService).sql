BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @GuidValue_1 Uuid -- Guid
SET     @GuidValue_1 = 'd2f970c0-35ac-4987-9cd5-5badb1757436'
DECLARE @take Integer -- Int32
SET     @take = 2

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
	p."GuidValue" = :GuidValue_1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @GuidValue_1 Uuid -- Guid
SET     @GuidValue_1 = '40932fdb-1543-4e4a-ac2c-ca371604fb4b'
DECLARE @take Integer -- Int32
SET     @take = 2

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
	p."GuidValue" = :GuidValue_1
LIMIT :take

