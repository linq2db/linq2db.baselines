-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	Trunc((r.A + r.B) / r.C),
	Trunc(r.A / (r.B + r.C)),
	Trunc((r.A + r.B) / r.C),
	Trunc(r.A / (r.B + r.C)),
	Trunc((r.A - r.B) / r.C),
	Trunc(r.A / (r.B - r.C)),
	Trunc((r.A - r.B) / r.C),
	Trunc(r.A / (r.B - r.C)),
	Trunc(r.A / (r.B * r.C)),
	Trunc(r.A / (r.B * r.C)),
	Trunc(Trunc(r.A / r.B) / r.C),
	Trunc(r.A / Trunc(r.B / r.C)),
	Trunc(Trunc(r.A / r.B) / r.C),
	Trunc(r.A / Trunc(r.B / r.C)),
	Trunc(r.A / (r.B + r.C - BITAND(r.B, r.C) * 2)),
	Trunc(r.A / (r.B + r.C - BITAND(r.B, r.C) * 2)),
	Trunc((r.A + r.B) / r.C),
	Trunc(r.A / (r.B + r.C)),
	Trunc((r.A + -6) / r.C),
	Trunc((r.A - r.B) / r.C),
	Trunc(r.A / (r.B - r.C)),
	Trunc((r.A - -6) / r.C),
	Trunc((r.A * r.B) / r.C),
	Trunc(r.A / (r.B * r.C)),
	Trunc((r.A * -6) / r.C),
	Trunc((r.A / r.B) / r.C),
	Trunc(r.A / (r.B / r.C)),
	Trunc((r.A / -6) / r.C),
	Trunc((r.A + r.B) / r.C),
	Trunc(r.A / (r.B + r.C)),
	Trunc((r.A + -6) / r.C),
	Trunc(r.A / -r.B),
	Trunc((r.A - r.B) / r.C),
	Trunc((r.A + r.B) / r.C),
	Trunc(Trunc(r.A / -r.B) / r.C),
	Trunc(BITAND(r.A, -r.B) / r.C),
	Trunc((r.A - r.B - BITAND(r.A, -r.B) * 2) / r.C),
	Trunc(r.A * (-1 - r.B) / r.C),
	Trunc(r.A * -5 / r.C),
	Trunc(BITAND(r.A, -5) / r.C)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	Trunc(r.A * -5 / r.C),
	Trunc(BITAND(r.A, -5) / r.C)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

