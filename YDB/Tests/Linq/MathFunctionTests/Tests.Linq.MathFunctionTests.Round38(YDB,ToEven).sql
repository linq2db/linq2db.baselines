-- YDB Ydb
SELECT
	Math::NearbyInt(Unwrap(CAST(r.A AS Double)) * Double('10'), Math::RoundToNearest()) / Double('10') as A,
	Math::NearbyInt(Unwrap(CAST(r.C AS Double)) * Double('10'), Math::RoundToNearest()) / Double('10') as C_1,
	Math::NearbyInt(Unwrap(CAST(r.L AS Double)) * Double('1000'), Math::RoundToNearest()) / Double('1000') as L,
	Math::NearbyInt(Unwrap(CAST(r.N AS Double)) * Double('100'), Math::RoundToNearest()) / Double('100') as N,
	CASE
		WHEN Unwrap(CAST(r.A AS Double)) * Math::Pow(Double('10'), Unwrap(CAST(Unwrap(CAST(r.F AS Int32)) AS Double))) >= Double('0')
			THEN Math::Round(Unwrap(CAST(r.A AS Double)) * Math::Pow(Double('10'), Unwrap(CAST(Unwrap(CAST(r.F AS Int32)) AS Double))))
		ELSE -Math::Round(-(Unwrap(CAST(r.A AS Double)) * Math::Pow(Double('10'), Unwrap(CAST(Unwrap(CAST(r.F AS Int32)) AS Double)))))
	END / Math::Pow(Double('10'), Unwrap(CAST(Unwrap(CAST(r.F AS Int32)) AS Double))) as RuntimeAway,
	Math::NearbyInt(Unwrap(CAST(r.A AS Double)) * Math::Pow(Double('10'), Unwrap(CAST(Unwrap(CAST(r.F AS Int32)) AS Double))), Math::RoundToNearest()) / Math::Pow(Double('10'), Unwrap(CAST(Unwrap(CAST(r.F AS Int32)) AS Double))) as RuntimeEven,
	Math::NearbyInt(Unwrap(CAST(r.A AS Double)) * Unwrap(CAST(Decimal('10', 22, 9) AS Double)), Math::RoundToNearest()) as None_1,
	Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(r.C AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(10,2))) = r.C as NoneSame,
	Math::NearbyInt(Unwrap(CAST(r.A AS Double)) * Double('10'), Math::RoundToNearest()) / Double('10') > r.F as GreaterF,
	Math::NearbyInt(Unwrap(CAST(r.C AS Double)) * Double('10'), Math::RoundToNearest()) / Double('10') + Unwrap(CAST(r.L AS Double)) as PlusL
FROM
	RoundDecimalStoredDouble r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.A as A,
	t1.C as C_1,
	t1.L as L,
	t1.N as N,
	t1.F as F
FROM
	RoundDecimalStoredDouble t1

