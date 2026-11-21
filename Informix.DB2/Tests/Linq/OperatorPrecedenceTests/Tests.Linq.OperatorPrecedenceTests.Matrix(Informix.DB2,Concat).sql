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

-- cell Concat/Concat(s,Add(a,b)): green
-- cell Concat/Concat(Add(a,b),s): green
-- cell Concat/Join(s,Add(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Add(a,b))): green
-- cell Concat/Concat(s,Sub(a,b)): green
-- cell Concat/Concat(Sub(a,b),s): green
-- cell Concat/Join(s,Sub(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Sub(a,b))): green
-- cell Concat/Concat(s,Mul(a,b)): green
-- cell Concat/Concat(Mul(a,b),s): green
-- cell Concat/Join(s,Mul(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Mul(a,b))): green
-- cell Concat/Concat(s,Div(a,b)): green
-- cell Concat/Concat(Div(a,b),s): green
-- cell Concat/Join(s,Div(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Div(a,b))): green
-- cell Concat/Concat(s,Mod(a,b)): green
-- cell Concat/Concat(Mod(a,b),s): green
-- cell Concat/Join(s,Mod(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Mod(a,b))): green
-- cell Concat/Concat(s,And(a,b)): green
-- cell Concat/Concat(And(a,b),s): green
-- cell Concat/Join(s,And(b,c),c): green
-- cell Concat/Concat(s,Concat(s,And(a,b))): green
-- cell Concat/Concat(s,Or(a,b)): green
-- cell Concat/Concat(Or(a,b),s): green
-- cell Concat/Join(s,Or(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Or(a,b))): green
-- cell Concat/Concat(s,Xor(a,b)): green
-- cell Concat/Concat(Xor(a,b),s): green
-- cell Concat/Join(s,Xor(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Xor(a,b))): green
-- cell Concat/Concat(s,Neg(a)): green
-- cell Concat/Concat(Neg(a),s): green
-- cell Concat/Concat(s,Not(a)): green
-- cell Concat/Concat(Not(a),s): green
-- cell Concat/Concat(s,NegLit(a)): green
-- cell Concat/Concat(NegLit(a),s): green
-- cell Concat/Concat(s,NegParam(a)): green
-- cell Concat/Concat(NegParam(a),s): green
