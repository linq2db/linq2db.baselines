-- YDB Ydb
SELECT
	Math::NearbyInt(r.D, Math::RoundToNearest()) as None_1,
	Math::NearbyInt(r.D * Double('10'), Math::RoundToNearest()) / Double('10') as One,
	Math::NearbyInt(r.D * Math::Pow(Double('10'), Unwrap(CAST(r.P AS Double))), Math::RoundToNearest()) / Math::Pow(Double('10'), Unwrap(CAST(r.P AS Double))) as Runtime
FROM
	RoundDoubleStored r
ORDER BY
	r.Id

