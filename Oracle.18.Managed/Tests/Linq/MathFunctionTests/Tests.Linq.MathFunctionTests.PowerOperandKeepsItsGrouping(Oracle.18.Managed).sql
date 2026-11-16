-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	Power(CAST(p.ID * 2 AS Float), 2D)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	Power(CAST(p.ID + 1 AS Float), 2D)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	Power(CAST(100 - p.ID AS Float), 2D)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	Power(CAST(-p.ID AS Float), 2D)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	-Power(CAST(p.ID AS Float), 2D)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	Power(-2D, CAST(MOD(p.ID, 3) + 1 AS Float))
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	Power(CAST(p.ID AS Float), -1D)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.18.Managed Oracle.Managed Oracle12
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

