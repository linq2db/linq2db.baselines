-- YDB Ydb

SELECT
	t.Value_1 as Value_1
FROM
	(
		SELECT
			CAST(CAST(Math::Floor(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::Pow(Unwrap(CAST(p.MoneyValue AS Double)), Unwrap(CAST(Decimal('3', 22, 9) AS Double))) AS Text)) AS Decimal(6,2))) AS Double))) AS Text) AS Decimal(6,2)) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> Decimal('0', 22, 9)

