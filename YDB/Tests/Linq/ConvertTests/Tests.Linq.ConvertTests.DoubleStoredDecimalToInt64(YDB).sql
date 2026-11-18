-- YDB Ydb
SELECT
	r.Id as Id,
	Unwrap(CAST(r.D AS Int64)) as D,
	Unwrap(CAST(Math::NearbyInt(r.D, Math::RoundToNearest()) AS Int64)) as DRounded
FROM
	DoubleStoredDecimal r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.D as D
FROM
	DoubleStoredDecimal t1

