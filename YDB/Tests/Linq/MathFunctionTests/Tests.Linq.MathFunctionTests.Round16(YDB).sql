-- YDB Ydb
SELECT
	CASE
		WHEN p.ID % 2 >= -2 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN p.ID % 2 > 0 THEN 2
			ELSE p.ID % 2 + 2
		END AS Double))) AS Text)) AS Decimal(8,2))) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(8,2))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN p.ID % 2 > 0 THEN 2
			ELSE p.ID % 2 + 2
		END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(6,2)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(p.ID % 2 + 2, p.ID % 2 >= -31, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(35,31))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(p.ID % 2 + 2, p.ID % 2 >= -31, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(6,2)))
	END as c1
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> Decimal('0', 6, 2)

-- YDB Ydb
SELECT
	CASE
		WHEN p.ID % 2 >= -1 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN p.ID % 2 > 1 THEN 2
			ELSE p.ID % 2 + 1
		END AS Double))) AS Text)) AS Decimal(8,2))) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(8,2))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN p.ID % 2 > 1 THEN 2
			ELSE p.ID % 2 + 1
		END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(6,2)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(p.ID % 2 + 1, p.ID % 2 >= -30, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(35,31))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(p.ID % 2 + 1, p.ID % 2 >= -30, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(6,2)))
	END as c1
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> Decimal('0', 6, 2)

