BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Date_1 Timestamp -- DateTime
SET     @Date_1 = '2009-09-20'::date

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
	Cast(t."DateTimeValue" as Date) > :Date_1

