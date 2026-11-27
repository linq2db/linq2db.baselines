-- Oracle.11.Managed Oracle11
SELECT
	BITAND(CAST(p.ID AS Decimal), 6)
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

-- Oracle.11.Managed Oracle11
SELECT
	(CAST(p.ID AS Decimal) + 6) - BITAND(CAST(p.ID AS Decimal), 6)
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

-- Oracle.11.Managed Oracle11
SELECT
	(CAST(p.ID AS Decimal) + 6) - BITAND(CAST(p.ID AS Decimal), 6) * 2
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

