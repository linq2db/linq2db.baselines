BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."DateTimeValue2",
	t1."BoolValue",
	t1."GuidValue",
	t1."SmallIntValue",
	t1."IntValue",
	t1."BigIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1
WHERE
	TRUNC(t1."DateTimeValue") = TRUNC(TO_TIMESTAMP('2009-09-20 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3'))

