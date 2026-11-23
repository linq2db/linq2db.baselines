-- Informix.DB2 Informix
SELECT
	Nvl(r.S, '') || To_Char(r.A + r.B),
	To_Char(r.A + r.B) || Nvl(r.S, ''),
	Nvl(r.S, '') || ',' || (r.B + r.C) || ',' || r.C,
	Nvl(r.S, '') || Nvl(r.S, '') || To_Char(r.A + r.B),
	Nvl(r.S, '') || To_Char(r.A - r.B),
	To_Char(r.A - r.B) || Nvl(r.S, ''),
	Nvl(r.S, '') || ',' || (r.B - r.C) || ',' || r.C,
	Nvl(r.S, '') || Nvl(r.S, '') || To_Char(r.A - r.B),
	Nvl(r.S, '') || To_Char(r.A * r.B),
	To_Char(r.A * r.B) || Nvl(r.S, ''),
	Nvl(r.S, '') || ',' || (r.B * r.C) || ',' || r.C,
	Nvl(r.S, '') || Nvl(r.S, '') || To_Char(r.A * r.B),
	Nvl(r.S, '') || To_Char((r.A / r.B)::Int),
	To_Char((r.A / r.B)::Int) || Nvl(r.S, ''),
	Nvl(r.S, '') || ',' || (r.B / r.C)::Int || ',' || r.C,
	Nvl(r.S, '') || Nvl(r.S, '') || To_Char((r.A / r.B)::Int),
	Nvl(r.S, '') || To_Char(Mod(r.A, r.B)),
	To_Char(Mod(r.A, r.B)) || Nvl(r.S, ''),
	Nvl(r.S, '') || ',' || Mod(r.B, r.C) || ',' || r.C,
	Nvl(r.S, '') || Nvl(r.S, '') || To_Char(Mod(r.A, r.B)),
	Nvl(r.S, '') || To_Char(BitAnd(r.A, r.B)),
	To_Char(BitAnd(r.A, r.B)) || Nvl(r.S, ''),
	Nvl(r.S, '') || ',' || BitAnd(r.B, r.C) || ',' || r.C,
	Nvl(r.S, '') || Nvl(r.S, '') || To_Char(BitAnd(r.A, r.B)),
	Nvl(r.S, '') || To_Char(BitOr(r.A, r.B)),
	To_Char(BitOr(r.A, r.B)) || Nvl(r.S, ''),
	Nvl(r.S, '') || ',' || BitOr(r.B, r.C) || ',' || r.C,
	Nvl(r.S, '') || Nvl(r.S, '') || To_Char(BitOr(r.A, r.B)),
	Nvl(r.S, '') || To_Char(BitXor(r.A, r.B)),
	To_Char(BitXor(r.A, r.B)) || Nvl(r.S, ''),
	Nvl(r.S, '') || ',' || BitXor(r.B, r.C) || ',' || r.C,
	Nvl(r.S, '') || Nvl(r.S, '') || To_Char(BitXor(r.A, r.B)),
	Nvl(r.S, '') || To_Char(-r.A),
	To_Char(-r.A) || Nvl(r.S, ''),
	Nvl(r.S, '') || To_Char(BITNOT(r.A)),
	To_Char(BITNOT(r.A)) || Nvl(r.S, ''),
	Nvl(r.S, '') || '-5',
	'-5' || Nvl(r.S, '')
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- Informix.DB2 Informix
SELECT
	Nvl(r.S, '') || '-5',
	'-5' || Nvl(r.S, '')
FROM
	PrecedenceRow r
ORDER BY
	r.Id

