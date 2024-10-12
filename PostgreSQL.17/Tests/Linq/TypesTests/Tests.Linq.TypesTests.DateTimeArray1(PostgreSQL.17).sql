BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @DateTimeValue Timestamp -- DateTime2
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

