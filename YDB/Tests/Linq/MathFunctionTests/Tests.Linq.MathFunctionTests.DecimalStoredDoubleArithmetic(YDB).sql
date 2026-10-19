-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Double)) + Unwrap(CAST(r.C AS Double)) as APlusC,
	Unwrap(CAST(r.C AS Double)) / Unwrap(CAST(r.B AS Double)) as CDivB,
	Unwrap(CAST(r.A AS Double)) / Unwrap(CAST(Decimal('3', 22, 9) AS Double)) as ADiv3,
	Unwrap(CAST(r.C AS Double)) * Unwrap(CAST(r.C AS Double)) as CTimesC,
	Unwrap(CAST(r.L AS Double)) * Unwrap(CAST(r.L AS Double)) as LTimesL,
	Unwrap(CAST(r.A AS Double)) * Unwrap(CAST(Decimal('2.5', 22, 9) AS Double)) as ATimes25,
	Unwrap(CAST(r.A AS Double)) + r.F as APlusF,
	Math::NearbyInt(Unwrap(CAST(r.A AS Double)) * Double('10'), Math::RoundToNearest()) / Double('10') as ARounded
FROM
	DecimalStoredDouble r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.A as A,
	t1.B as B,
	t1.C as C_1,
	t1.L as L,
	t1.F as F
FROM
	DecimalStoredDouble t1

