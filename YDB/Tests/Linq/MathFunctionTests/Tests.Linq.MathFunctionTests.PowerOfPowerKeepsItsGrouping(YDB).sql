-- YDB Ydb
SELECT
	Math::Pow(Double('2'), Math::Pow(Unwrap(CAST(p.ID % 3 + 1 AS Double)), Double('2'))) as c1
FROM
	LinqDataTypes p
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
	Math::Pow(Math::Pow(Unwrap(CAST(p.ID % 3 + 1 AS Double)), Double('2')), Double('3')) as c1
FROM
	LinqDataTypes p
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
	Unwrap(CAST(Unwrap(CAST(Math::Pow(Unwrap(CAST(Decimal('2', 22, 9) AS Double)), Math::Pow(Unwrap(CAST(Unwrap(CAST(p.ID % 3 + 1 AS Decimal(22,9))) AS Double)), Unwrap(CAST(Decimal('2', 22, 9) AS Double)))) AS Text)) AS Decimal(22,9))) as c1
FROM
	LinqDataTypes p
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
	Math::Pow(Double('2'), Math::Pow(CAST(p.Value1 % 3 + 1 AS Double), Double('2'))) as c1
FROM
	Parent p
WHERE
	p.Value1 IS NOT NULL
ORDER BY
	p.ParentID

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

