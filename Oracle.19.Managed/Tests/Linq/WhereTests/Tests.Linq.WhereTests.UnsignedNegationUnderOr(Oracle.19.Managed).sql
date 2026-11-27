-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	(CAST(p.ID AS Number(19)) + CAST((4294967295 - CAST(p.ID + 4 AS Number(19))) AS Number(19))) - BITAND(CAST(p.ID AS Number(19)), CAST((4294967295 - CAST(p.ID + 4 AS Number(19))) AS Number(19)))
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.19.Managed Oracle.Managed Oracle12
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

