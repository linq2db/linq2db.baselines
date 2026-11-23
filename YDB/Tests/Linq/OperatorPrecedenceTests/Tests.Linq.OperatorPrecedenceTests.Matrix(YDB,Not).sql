-- YDB Ydb
SELECT
	BitCast((~BitCast((r.A + r.B) AS Uint32)) AS Int32) as c1,
	BitCast((~BitCast((r.A + r.B) AS Uint32)) AS Int32) as c2,
	BitCast((~BitCast((r.A - r.B) AS Uint32)) AS Int32) as c3,
	BitCast((~BitCast((r.A - r.B) AS Uint32)) AS Int32) as c4,
	BitCast((~BitCast((r.A * r.B) AS Uint32)) AS Int32) as c5,
	BitCast((~BitCast((r.A * r.B) AS Uint32)) AS Int32) as c6,
	BitCast((~BitCast((r.A / r.B) AS Uint32)) AS Int32) as c7,
	BitCast((~BitCast((r.A / r.B) AS Uint32)) AS Int32) as c8,
	BitCast((~BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c9,
	BitCast((~BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c10,
	BitCast((~BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c11,
	BitCast((~BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c12,
	BitCast((~BitCast((-r.B) AS Uint32)) AS Int32) as c13,
	BitCast((~BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c14,
	BitCast((~BitCast(-5 AS Uint32)) AS Int32) as c15,
	BitCast((~BitCast((-5 * r.B) AS Uint32)) AS Int32) as c16
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	BitCast((~BitCast(-5 AS Uint32)) AS Int32) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

