-- YDB Ydb

SELECT
	t.Value_1 as Value_1
FROM
	(
		SELECT
			CAST(CAST(Math::Floor(Unwrap(CAST(CAST(p.MoneyValue AS Double) * 180.0 / Math::Pi() AS Double))) AS Text) AS Decimal(22,9)) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> Decimal('0.1', 22, 9)

