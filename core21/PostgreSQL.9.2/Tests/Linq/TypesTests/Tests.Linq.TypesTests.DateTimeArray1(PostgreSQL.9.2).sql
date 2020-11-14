BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @DateTimeValue Timestamp -- DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21.100'::timestamp

SELECT
	t."ID",
	t."MoneyValue",
	t."DateTimeValue",
	t."DateTimeValue2",
	t."BoolValue",
	t."GuidValue",
	t."SmallIntValue",
	t."IntValue",
	t."BigIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	t."DateTimeValue" IN (:DateTimeValue)

