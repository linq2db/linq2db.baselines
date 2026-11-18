-- YDB Ydb
SELECT
	r.Id as Id,
	Unwrap(CAST(Ensure(r.D - r.D, r.D < Decimal('10000000000000', 35, 0) AND r.D > Decimal('-10000000000000', 35, 0), 'ROUND value is out of range for Decimal(22,9)'u) AS Decimal(22,9))) as Away,
	Unwrap(CAST(Ensure(r.D - r.D, r.D < Decimal('10000000000000', 35, 0) AND r.D > Decimal('-10000000000000', 35, 0), 'ROUND value is out of range for Decimal(22,9)'u) AS Decimal(22,9))) as Even,
	CAST(Ensure(r.N - r.N, r.N < Decimal('10000000000000', 35, 0) AND r.N > Decimal('-10000000000000', 35, 0) OR r.N IS NULL, 'ROUND value is out of range for Decimal(22,9)'u) AS Decimal(22,9)) as N
FROM
	RoundManyDigits r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Ensure(r.D35s2 * r.D35s2 - r.D35s2 * r.D35s2, r.D35s2 * r.D35s2 < Decimal('10000000000000', 35, 0) AND r.D35s2 * r.D35s2 > Decimal('-10000000000000', 35, 0), 'ROUND value is out of range for Decimal(22,9)'u) AS Decimal(22,9))) + r.D22s9 as c1
FROM
	RoundNegativeDynamicWide r
WHERE
	r.Id < 3
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Ensure(r.D35s2 * r.D35s2 - r.D35s2 * r.D35s2, r.D35s2 * r.D35s2 < Decimal('10000000000000', 35, 0) AND r.D35s2 * r.D35s2 > Decimal('-10000000000000', 35, 0), 'ROUND value is out of range for Decimal(22,9)'u) AS Decimal(22,9))) as c1
FROM
	RoundNegativeDynamicWide r
WHERE
	r.Id = 3

