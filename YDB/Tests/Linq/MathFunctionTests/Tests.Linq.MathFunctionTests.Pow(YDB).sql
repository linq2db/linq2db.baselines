-- YDB Ydb

SELECT
	t.Value_1 as Value_1
FROM
	(
		SELECT
			Math::Floor(Math::Pow(Unwrap(CAST(p.MoneyValue AS Double)), Double('3'))) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> Double('0')

