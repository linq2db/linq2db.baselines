-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	BITAND(CAST(p.ID AS Number(19)), CAST(4294967289 AS Number(19)))
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
	(CAST(p.ID AS Number(19)) + CAST(2147483649 AS Number(19))) - BITAND(CAST(p.ID AS Number(19)), CAST(2147483649 AS Number(19)))
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
	(CAST(p.ID AS Number(19)) + CAST(4294967295 AS Number(19))) - BITAND(CAST(p.ID AS Number(19)), CAST(4294967295 AS Number(19))) * 2
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
	BITAND(CAST(p.ID AS Number(19)), CAST(2147483648 AS Number(19)))
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
	BITAND(t.U, CAST(4294967289 AS Number(19)))
FROM
	"UnsignedColumnTable" t
ORDER BY
	t."Id"

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1.U
FROM
	"UnsignedColumnTable" t1

