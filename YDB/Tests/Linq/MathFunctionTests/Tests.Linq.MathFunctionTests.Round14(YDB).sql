-- YDB Ydb
SELECT
	p.MoneyValue + p.MoneyValue as c1
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> Decimal('0', 6, 2)
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

-- YDB Ydb
SELECT
	CASE
		WHEN p.ID > 2 THEN p.MoneyValue
		ELSE p.MoneyValue
	END as c1
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> Decimal('0', 6, 2)
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

