-- YDB Ydb
SELECT
	r.Id as Id,
	r.D34s2 as D34s2,
	r.D35s2 as D35s2,
	Unwrap(CAST(Unwrap(CAST(CASE
		WHEN Unwrap(CAST(r.D35s6 * Decimal('100', 35, 6) AS Double)) >= Double('0')
			THEN Math::Round(Unwrap(CAST(r.D35s6 * Decimal('100', 35, 6) AS Double)))
		ELSE -Math::Round(-Unwrap(CAST(r.D35s6 * Decimal('100', 35, 6) AS Double)))
	END AS Text)) AS Decimal(35,6))) / Decimal('100', 35, 6) as R6
FROM
	RoundNearLimit r
ORDER BY
	r.Id

