-- YDB Ydb
SELECT
	r.Id as Id,
	r.D34s2 as D34s2,
	r.D35s2 as D35s2,
	Unwrap(CAST(Unwrap(CAST(r.D35s6 * Decimal('100', 35, 6) AS Decimal(35,0))) AS Decimal(35,6))) / Decimal('100', 35, 6) as R6,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D4s4 AS Decimal(7,4))) * Decimal('100', 7, 4) AS Decimal(7,0))) AS Decimal(7,4))) / Decimal('100', 7, 4) AS Decimal(4,4))) as R4
FROM
	RoundNearLimit r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.D34s2 as D34s2,
	t1.D35s2 as D35s2,
	t1.D35s6 as D35s6,
	t1.D4s4 as D4s4
FROM
	RoundNearLimit t1

