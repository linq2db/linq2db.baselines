-- Informix.DB2 Informix
SELECT
	CASE
		WHEN p.MoneyValue * 2 = ROUND(p.MoneyValue * 2, Mod(p.ID, 2) + 2) AND p.MoneyValue <> ROUND(p.MoneyValue, Mod(p.ID, 2) + 2)
			THEN ROUND(p.MoneyValue / 2, Mod(p.ID, 2) + 2) * 2
		ELSE ROUND(p.MoneyValue, Mod(p.ID, 2) + 2)
	END
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> 0
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
	CASE
		WHEN p.MoneyValue * 2 = ROUND(p.MoneyValue * 2, Mod(p.ID, 2) + 1) AND p.MoneyValue <> ROUND(p.MoneyValue, Mod(p.ID, 2) + 1)
			THEN ROUND(p.MoneyValue / 2, Mod(p.ID, 2) + 1) * 2
		ELSE ROUND(p.MoneyValue, Mod(p.ID, 2) + 1)
	END
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> 0
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

