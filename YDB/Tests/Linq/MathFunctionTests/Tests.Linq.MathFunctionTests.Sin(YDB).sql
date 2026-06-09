-- YDB Ydb

SELECT
	t.Value_1 as Value_1
FROM
	(
		SELECT
			Math::Floor(Math::Sin(Unwrap(CAST(p.MoneyValue AS Double)) / Unwrap(CAST(Decimal('15', 6, 2) AS Double))) * Double('15')) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> Double('0.10000000000000001')

