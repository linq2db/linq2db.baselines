-- YDB Ydb
SELECT
	-(r.A + r.B) as c1,
	-(r.A + r.B) as c2,
	-(r.A - r.B) as c3,
	-(r.A - r.B) as c4,
	-BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) as c5,
	-BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) as c6,
	-BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) as c7,
	-BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) as c8,
	-BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) as c9,
	-BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) as c10,
	r.B as B,
	-BitCast((~BitCast(r.B AS Uint32)) AS Int32) as c11,
	-(-5) as c12,
	-(-5 * r.B) as c13
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	-(-5) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

