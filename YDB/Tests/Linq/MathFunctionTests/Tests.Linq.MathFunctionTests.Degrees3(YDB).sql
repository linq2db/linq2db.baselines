-- YDB Ydb

SELECT
	t.Value_1 as Value_1
FROM
	(
		SELECT
			CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Double)) AS Int32)) AS Double) * 180.0 / Math::Pi() as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	Unwrap(CAST(t.Value_1 AS Double)) <> Double('0.10000000000000001')

