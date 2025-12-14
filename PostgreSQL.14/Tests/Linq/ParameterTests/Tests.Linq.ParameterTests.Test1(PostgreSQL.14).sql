-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @dt Timestamp -- DateTime2
SET     @dt = '2020-02-29 17:54:55.123'::timestamp

SELECT
	t."ID",
	t."MoneyValue",
	t."DateTimeValue",
	t."BoolValue",
	t."GuidValue",
	t."BinaryValue",
	t."SmallIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	t."DateTimeValue" = :dt

