-- YDB Ydb

SELECT
	t.c1 as c1
FROM
	(
		SELECT
			Math::NearbyInt(Unwrap(CAST(p.MoneyValue AS Double)), Math::RoundToNearest()) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> Double('0')

