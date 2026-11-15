-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	MOD(p.ID + 5, 3)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.21.Managed Oracle.Managed Oracle12
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

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	MOD(100 - p.ID, 3)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.21.Managed Oracle.Managed Oracle12
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

