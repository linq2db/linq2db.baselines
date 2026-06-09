-- YDB Ydb

SELECT
	Math::Floor(t.Value_1) as Value_1
FROM
	(
		SELECT
			CAST(Unwrap(CAST(p.MoneyValue AS Double)) AS Double) * 180.0 / Math::Pi() as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> Double('0.10000000000000001')

