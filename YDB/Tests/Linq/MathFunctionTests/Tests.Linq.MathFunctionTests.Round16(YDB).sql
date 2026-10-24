-- YDB Ydb
SELECT
	CASE
		WHEN p.ID % 2 < -6 THEN Unwrap(CAST(Ensure(p.MoneyValue - p.MoneyValue, p.MoneyValue < Decimal('10000', 35, 0) AND p.MoneyValue > Decimal('-10000', 35, 0), 'ROUND value is out of range for Decimal(6,2)'u) AS Decimal(6,2)))
		WHEN p.ID % 2 >= -2 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN p.ID % 2 > 0 THEN 2
			ELSE p.ID % 2 + 2
		END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(8,0))) AS Decimal(8,2))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN p.ID % 2 > 0 THEN 2
			ELSE p.ID % 2 + 2
		END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(6,2)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(p.ID % 2 + 2, p.ID % 2 >= -31, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(35,0))) AS Decimal(35,31))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(p.ID % 2 + 2, p.ID % 2 >= -31, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(6,2)))
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

-- YDB Ydb
SELECT
	CASE
		WHEN p.ID % 2 < -5 THEN Unwrap(CAST(Ensure(p.MoneyValue - p.MoneyValue, p.MoneyValue < Decimal('10000', 35, 0) AND p.MoneyValue > Decimal('-10000', 35, 0), 'ROUND value is out of range for Decimal(6,2)'u) AS Decimal(6,2)))
		WHEN p.ID % 2 >= -1 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN p.ID % 2 > 1 THEN 2
			ELSE p.ID % 2 + 1
		END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(8,0))) AS Decimal(8,2))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN p.ID % 2 > 1 THEN 2
			ELSE p.ID % 2 + 1
		END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(6,2)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(p.ID % 2 + 1, p.ID % 2 >= -30, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(35,0))) AS Decimal(35,31))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(p.ID % 2 + 1, p.ID % 2 >= -30, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(6,2)))
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

