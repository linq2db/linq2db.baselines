-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Date Timestamp -- DateTime2
SET     @Date = '2009-09-20'::date

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
	Date_Trunc('day', t."DateTimeValue") > :Date

