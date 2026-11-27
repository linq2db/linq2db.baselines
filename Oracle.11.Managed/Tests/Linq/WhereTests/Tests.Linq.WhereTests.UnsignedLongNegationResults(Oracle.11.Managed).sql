-- Oracle.11.Managed Oracle11
SELECT
	(18446744073709551615 - CAST(p.ID AS Decimal))
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.11.Managed Oracle11
SELECT
	t1.ID,
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."BoolValue",
	t1."GuidValue",
	t1."BinaryValue",
	t1."SmallIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1

