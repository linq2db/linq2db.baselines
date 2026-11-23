-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Text)) as c1,
	Unwrap(CAST(r.A - r.B AS Text)) as c2,
	Unwrap(CAST(r.A * r.B AS Text)) as c3,
	Unwrap(CAST(r.A / r.B AS Text)) as c4,
	Unwrap(CAST(r.A % r.B AS Text)) as c5,
	Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) AS Text)) as c6,
	Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) AS Text)) as c7,
	Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) AS Text)) as c8,
	Unwrap(CAST(-r.A AS Text)) as c9,
	Unwrap(CAST(BitCast((~BitCast(r.A AS Uint32)) AS Int32) AS Text)) as c10
FROM
	PrecedenceRow r
ORDER BY
	r.Id

