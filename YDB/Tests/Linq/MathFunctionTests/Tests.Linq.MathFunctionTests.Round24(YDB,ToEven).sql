-- YDB Ydb
SELECT
	r.Id as Id,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(26,9))) * Decimal('10000', 26, 9) AS Decimal(26,0))) AS Decimal(26,9))) / Decimal('10000', 26, 9) AS Decimal(22,9))) as R4,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(27,9))) * Decimal('100000', 27, 9) AS Decimal(27,0))) AS Decimal(27,9))) / Decimal('100000', 27, 9) AS Decimal(22,9))) as R5,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(24,9))) * Decimal('100', 24, 9) AS Decimal(24,0))) AS Decimal(24,9))) / Decimal('100', 24, 9) AS Decimal(22,9))) as R2,
	r.P as P
FROM
	RoundManyDigits r
WHERE
	r.P > 0
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.Id as Id,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(22,9))) AS Decimal(22,0))) AS Decimal(22,9))) as R
FROM
	RoundManyDigits r
WHERE
	r.P = 0
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.Id as Id,
	CASE
		WHEN r.P < -13 THEN Unwrap(CAST(Ensure(r.D - r.D, r.D < Decimal('10000000000000', 35, 0) AND r.D > Decimal('-10000000000000', 35, 0), 'ROUND value is out of range for Decimal(22,9)'u) AS Decimal(22,9)))
		WHEN r.P >= 0 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 9 THEN 9
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) AS Decimal(31,9))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 9 THEN 9
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(22,9)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(22,9)))
	END as R
FROM
	RoundManyDigits r
WHERE
	r.Id <> 12
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.Id as Id,
	CAST(CAST(CAST(CAST(r.N AS Decimal(24,9)) * Decimal('100', 24, 9) AS Decimal(24,0)) AS Decimal(24,9)) / Decimal('100', 24, 9) AS Decimal(22,9)) as R
FROM
	RoundManyDigits r
WHERE
	r.P = 2
ORDER BY
	r.Id

