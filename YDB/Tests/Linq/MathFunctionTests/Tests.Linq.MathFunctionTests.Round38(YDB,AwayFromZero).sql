-- YDB Ydb
SELECT
	CASE
		WHEN Unwrap(CAST(r.A AS Double)) * Double('10') >= Double('0')
			THEN Math::Round(Unwrap(CAST(r.A AS Double)) * Double('10'))
		ELSE -Math::Round(-(Unwrap(CAST(r.A AS Double)) * Double('10')))
	END / Double('10') as A,
	CASE
		WHEN Unwrap(CAST(r.C AS Double)) * Double('10') >= Double('0')
			THEN Math::Round(Unwrap(CAST(r.C AS Double)) * Double('10'))
		ELSE -Math::Round(-(Unwrap(CAST(r.C AS Double)) * Double('10')))
	END / Double('10') as C_1,
	CASE
		WHEN Unwrap(CAST(r.L AS Double)) * Double('1000') >= Double('0')
			THEN Math::Round(Unwrap(CAST(r.L AS Double)) * Double('1000'))
		ELSE -Math::Round(-(Unwrap(CAST(r.L AS Double)) * Double('1000')))
	END / Double('1000') as L,
	CASE
		WHEN Unwrap(CAST(r.N AS Double)) * Double('100') >= Double('0')
			THEN Math::Round(Unwrap(CAST(r.N AS Double)) * Double('100'))
		ELSE -Math::Round(-(Unwrap(CAST(r.N AS Double)) * Double('100')))
	END / Double('100') as N,
	CASE
		WHEN Unwrap(CAST(r.A AS Double)) * Math::Pow(Double('10'), Unwrap(CAST(Unwrap(CAST(r.F AS Int32)) AS Double))) >= Double('0')
			THEN Math::Round(Unwrap(CAST(r.A AS Double)) * Math::Pow(Double('10'), Unwrap(CAST(Unwrap(CAST(r.F AS Int32)) AS Double))))
		ELSE -Math::Round(-(Unwrap(CAST(r.A AS Double)) * Math::Pow(Double('10'), Unwrap(CAST(Unwrap(CAST(r.F AS Int32)) AS Double)))))
	END / Math::Pow(Double('10'), Unwrap(CAST(Unwrap(CAST(r.F AS Int32)) AS Double))) as RuntimeAway,
	Math::NearbyInt(Unwrap(CAST(r.A AS Double)) * Math::Pow(Double('10'), Unwrap(CAST(Unwrap(CAST(r.F AS Int32)) AS Double))), Math::RoundToNearest()) / Math::Pow(Double('10'), Unwrap(CAST(Unwrap(CAST(r.F AS Int32)) AS Double))) as RuntimeEven,
	CASE
		WHEN Unwrap(CAST(r.A AS Double)) * Unwrap(CAST(Decimal('10', 22, 9) AS Double)) >= Double('0')
			THEN Math::Round(Unwrap(CAST(r.A AS Double)) * Unwrap(CAST(Decimal('10', 22, 9) AS Double)))
		ELSE -Math::Round(-(Unwrap(CAST(r.A AS Double)) * Unwrap(CAST(Decimal('10', 22, 9) AS Double))))
	END as None_1,
	Unwrap(CAST(Unwrap(CAST(CASE
		WHEN Unwrap(CAST(r.C AS Double)) >= Double('0') THEN Math::Round(Unwrap(CAST(r.C AS Double)))
		ELSE -Math::Round(-Unwrap(CAST(r.C AS Double)))
	END AS Text)) AS Decimal(10,2))) = r.C as NoneSame,
	CASE
		WHEN Unwrap(CAST(r.A AS Double)) * Double('10') >= Double('0')
			THEN Math::Round(Unwrap(CAST(r.A AS Double)) * Double('10'))
		ELSE -Math::Round(-(Unwrap(CAST(r.A AS Double)) * Double('10')))
	END / Double('10') > r.F as GreaterF,
	CASE
		WHEN Unwrap(CAST(r.C AS Double)) * Double('10') >= Double('0')
			THEN Math::Round(Unwrap(CAST(r.C AS Double)) * Double('10'))
		ELSE -Math::Round(-(Unwrap(CAST(r.C AS Double)) * Double('10')))
	END / Double('10') + Unwrap(CAST(r.L AS Double)) as PlusL
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

