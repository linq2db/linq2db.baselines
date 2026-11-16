-- Informix.DB2 Informix
SELECT
	Power(-2, (Mod(p.ID, 3) + 1)::Float)
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

