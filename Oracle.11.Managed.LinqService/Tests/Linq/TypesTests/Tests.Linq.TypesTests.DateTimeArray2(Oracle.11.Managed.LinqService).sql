BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t.ID,
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
	t."DateTimeValue" IN (TIMESTAMP '2001-01-11 01:11:21.100000', TIMESTAMP '2012-11-07 19:19:29.090000')

