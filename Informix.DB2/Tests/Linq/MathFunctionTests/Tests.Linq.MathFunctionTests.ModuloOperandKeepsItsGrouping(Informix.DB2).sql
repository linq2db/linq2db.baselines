-- Informix.DB2 Informix
SELECT
	Mod(p.ID + 5, 3)
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
	Mod(100 - p.ID, 3)
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
	100 - Mod(p.ID, 3)
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
	Mod(p.ID + 20, Mod(p.ID * 5 + 3, 5))
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
	Mod(p.ID + 20, p.ID * 3)
FROM
	LinqDataTypes p
WHERE
	p.ID > 0
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
	Power(Mod(p.ID, 3)::Float, 2)
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
	Power(2, Mod(p.ID, 3)::Float)
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

