-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	Power(2D, Power(CAST(MOD(p.ID, 3) + 1 AS Float), 2D))
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

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	Power(Power(CAST(MOD(p.ID, 3) + 1 AS Float), 2D), 3D)
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

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	Power(2, CAST(Power(CAST(CAST(MOD(p.ID, 3) + 1 AS Decimal(28, 10)) AS Float), CAST(2 AS Float)) AS Decimal(28, 10)))
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

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	Power(2D, Power(CAST(MOD(p."Value1", 3) + 1 AS Float), 2D))
FROM
	"Parent" p
WHERE
	p."Value1" IS NOT NULL
ORDER BY
	p."ParentID"

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

