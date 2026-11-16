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

