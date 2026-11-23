-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	MOD(r.A + r.B, r.C),
	MOD(r.A, r.B + r.C),
	MOD(r.A + r.B, r.C),
	MOD(r.A, r.B + r.C),
	MOD(r.A - r.B, r.C),
	MOD(r.A, r.B - r.C),
	MOD(r.A - r.B, r.C),
	MOD(r.A, r.B - r.C),
	MOD(Trunc(r.A / r.B), r.C),
	MOD(Trunc(r.A / r.B), r.C),
	MOD(MOD(r.A, r.B), r.C),
	MOD(MOD(r.A, r.B), r.C),
	MOD(BITAND(r.A, r.B), r.C),
	MOD(BITAND(r.A, r.B), r.C),
	MOD(r.A + r.B - BITAND(r.A, r.B), r.C),
	MOD(r.A, r.B + r.C - BITAND(r.B, r.C)),
	MOD(r.A + r.B - BITAND(r.A, r.B), r.C),
	MOD(r.A, r.B + r.C - BITAND(r.B, r.C)),
	MOD(r.A + r.B - BITAND(r.A, r.B) * 2, r.C),
	MOD(r.A, r.B + r.C - BITAND(r.B, r.C) * 2),
	MOD(r.A + r.B - BITAND(r.A, r.B) * 2, r.C),
	MOD(r.A, r.B + r.C - BITAND(r.B, r.C) * 2),
	MOD(r.A + r.B, r.C),
	MOD(r.A, r.B + r.C),
	MOD(r.A + -6, r.C),
	MOD(r.A - r.B, r.C),
	MOD(r.A, r.B - r.C),
	MOD(r.A - -6, r.C),
	MOD(r.A * r.B, r.C),
	MOD(r.A, r.B * r.C),
	MOD(r.A * -6, r.C),
	MOD(r.A / r.B, r.C),
	MOD(r.A, r.B / r.C),
	MOD(r.A / -6, r.C),
	MOD(r.A + r.B, r.C),
	MOD(r.A, r.B + r.C),
	MOD(r.A + -6, r.C),
	MOD(r.A, -r.B),
	MOD(r.A - r.B, r.C),
	MOD(r.A + r.B, r.C),
	MOD(Trunc(r.A / -r.B), r.C),
	MOD(MOD(r.A, -r.B), r.C),
	MOD(r.A - r.B - BITAND(r.A, -r.B), r.C),
	MOD(r.A - r.B - BITAND(r.A, -r.B) * 2, r.C),
	MOD(r.A, -1 - r.B),
	MOD(r.A + (-1 - r.B), r.C),
	MOD(r.A - (-1 - r.B), r.C),
	MOD(r.A * (-1 - r.B), r.C),
	MOD(MOD(r.A, -1 - r.B), r.C),
	MOD(BITAND(r.A, -1 - r.B), r.C),
	MOD(r.A + (-1 - r.B) - BITAND(r.A, -1 - r.B), r.C),
	MOD(r.A + (-1 - r.B) - BITAND(r.A, -1 - r.B) * 2, r.C),
	MOD(r.A, -5),
	MOD(-5, r.C),
	MOD(r.A + -5, r.C),
	MOD(r.A - -5, r.C),
	MOD(r.A * -5, r.C),
	MOD(MOD(r.A, -5), r.C),
	MOD(BITAND(r.A, -5), r.C),
	MOD(r.A + -5 - BITAND(r.A, -5), r.C),
	MOD(r.A + -5 - BITAND(r.A, -5) * 2, r.C)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	MOD(r.A, -5),
	MOD(-5, r.C),
	MOD(r.A + -5, r.C),
	MOD(r.A - -5, r.C),
	MOD(r.A * -5, r.C),
	MOD(MOD(r.A, -5), r.C),
	MOD(BITAND(r.A, -5), r.C),
	MOD(r.A + -5 - BITAND(r.A, -5), r.C),
	MOD(r.A + -5 - BITAND(r.A, -5) * 2, r.C)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

