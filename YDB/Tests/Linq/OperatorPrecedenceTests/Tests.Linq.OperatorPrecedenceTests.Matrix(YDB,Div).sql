-- YDB Ydb
SELECT
	(r.A + r.B) / r.C as c1,
	r.A / (r.B + r.C) as c2,
	(r.A + r.B) / r.C as c3,
	r.A / (r.B + r.C) as c4,
	(r.A - r.B) / r.C as c5,
	r.A / (r.B - r.C) as c6,
	(r.A - r.B) / r.C as c7,
	r.A / (r.B - r.C) as c8,
	r.A / (r.B * r.C) as c9,
	r.A / (r.B * r.C) as c10,
	r.A / r.B / r.C as c11,
	r.A / (r.B / r.C) as c12,
	r.A / r.B / r.C as c13,
	r.A / (r.B / r.C) as c14,
	r.A / BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c15,
	r.A / BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c16,
	(r.A + r.B) / r.C as c17,
	r.A / (r.B + r.C) as c18,
	(r.A + -6) / r.C as c19,
	(r.A - r.B) / r.C as c20,
	r.A / (r.B - r.C) as c21,
	(r.A - -6) / r.C as c22,
	(r.A * r.B) / r.C as c23,
	r.A / (r.B * r.C) as c24,
	(r.A * -6) / r.C as c25,
	(r.A / r.B) / r.C as c26,
	r.A / (r.B / r.C) as c27,
	(r.A / -6) / r.C as c28,
	(r.A + r.B) / r.C as c29,
	r.A / (r.B + r.C) as c30,
	(r.A + -6) / r.C as c31,
	r.A / -r.B as c32,
	(r.A - r.B) / r.C as c33,
	(r.A + r.B) / r.C as c34,
	r.A / -r.B / r.C as c35,
	BitCast((BitCast(r.A AS Uint32) & BitCast((-r.B) AS Uint32)) AS Int32) / r.C as c36,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((-r.B) AS Uint32)) AS Int32) / r.C as c37,
	r.A * BitCast((~BitCast(r.B AS Uint32)) AS Int32) / r.C as c38,
	r.A * -5 / r.C as c39,
	BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) / r.C as c40
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * -5 / r.C as c1,
	BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) / r.C as c2
FROM
	PrecedenceRow r
ORDER BY
	r.Id

