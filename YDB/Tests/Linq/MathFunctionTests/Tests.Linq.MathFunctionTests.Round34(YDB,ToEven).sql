-- YDB Ydb
SELECT
	CASE
		WHEN r.P < -13 THEN Unwrap(CAST(Ensure(r.B - r.B, r.B < Decimal('10000000000000', 35, 0) AND r.B > Decimal('-10000000000000', 35, 0), 'ROUND value is out of range for Decimal(22,9)'u) AS Decimal(22,9)))
		WHEN r.P >= 0 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.B AS Decimal(35,13))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 9 THEN 9
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(35,13))) AS Decimal(35,0))) AS Decimal(35,13))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 9 THEN 9
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(35,13))) AS Decimal(22,9)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.B AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(22,9)))
	END as c1
FROM
	RoundDeclaredShapeFull r
ORDER BY
	r.Id

