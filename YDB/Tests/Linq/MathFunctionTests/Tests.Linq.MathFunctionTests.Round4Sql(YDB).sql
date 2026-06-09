-- YDB Ydb

SELECT
	Math::NearbyInt(t.c1 * Double('100000'), Math::RoundToNearest()) / Double('100000') as c1
FROM
	(
		SELECT
			Math::NearbyInt(Unwrap(CAST(p.MoneyValue AS Double)) * Double('10'), Math::RoundToNearest()) / Double('10') as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> Double('0')

