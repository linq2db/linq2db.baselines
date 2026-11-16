-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	MOD(p.ID + 5, 3)
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
	MOD(100 - p.ID, 3)
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
	100 - MOD(p.ID, 3)
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
	MOD(p.ID + 20, MOD(p.ID * 5 + 3, 5))
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
	MOD(p.ID + 20, p.ID * 3)
FROM
	"LinqDataTypes" p
WHERE
	p.ID > 0
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
	Power(CAST(MOD(p.ID, 3) AS Float), 2D)
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
	Power(2D, CAST(MOD(p.ID, 3) AS Float))
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

