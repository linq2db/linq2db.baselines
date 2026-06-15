-- YDB Ydb

SELECT
	t.Value_1 as Value_1
FROM
	(
		SELECT
			Math::Floor(Math::Log10(Unwrap(CAST(p.MoneyValue AS Double)))) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> Double('0.10000000000000001')

