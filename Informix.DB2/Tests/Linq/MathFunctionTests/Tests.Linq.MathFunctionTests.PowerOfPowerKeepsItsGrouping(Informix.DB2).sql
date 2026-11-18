-- Informix.DB2 Informix
SELECT
	Power(2, Power((Mod(p.ID, 3) + 1)::Float, 2))
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- Informix.DB2 Informix
SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1

-- Informix.DB2 Informix
SELECT
	Power(Power((Mod(p.ID, 3) + 1)::Float, 2), 3)
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- Informix.DB2 Informix
SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1

-- Informix.DB2 Informix
SELECT
	Power(2, Power((Mod(p.ID, 3) + 1)::Decimal::Float, 2::Float)::Decimal)
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- Informix.DB2 Informix
SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1

-- Informix.DB2 Informix
SELECT
	Power(2, Power((Mod(p.Value1, 3) + 1)::Float, 2))
FROM
	Parent p
WHERE
	p.Value1 IS NOT NULL
ORDER BY
	p.ParentID

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

