-- Oracle.11.Managed Oracle11
SELECT
	r.S || CAST(r.A + r.B AS VarChar(255)),
	CAST(r.A + r.B AS VarChar(255)) || r.S,
	r.S || ',' || (r.B + r.C) || ',' || r.C,
	r.S || r.S || CAST(r.A + r.B AS VarChar(255)),
	r.S || CAST(r.A - r.B AS VarChar(255)),
	CAST(r.A - r.B AS VarChar(255)) || r.S,
	r.S || ',' || (r.B - r.C) || ',' || r.C,
	r.S || r.S || CAST(r.A - r.B AS VarChar(255)),
	r.S || CAST(r.A * r.B AS VarChar(255)),
	CAST(r.A * r.B AS VarChar(255)) || r.S,
	r.S || ',' || r.B * r.C || ',' || r.C,
	r.S || r.S || CAST(r.A * r.B AS VarChar(255)),
	r.S || CAST(Trunc(r.A / r.B) AS VarChar(255)),
	CAST(Trunc(r.A / r.B) AS VarChar(255)) || r.S,
	r.S || ',' || Trunc(r.B / r.C) || ',' || r.C,
	r.S || r.S || CAST(Trunc(r.A / r.B) AS VarChar(255)),
	r.S || CAST(MOD(r.A, r.B) AS VarChar(255)),
	CAST(MOD(r.A, r.B) AS VarChar(255)) || r.S,
	r.S || ',' || MOD(r.B, r.C) || ',' || r.C,
	r.S || r.S || CAST(MOD(r.A, r.B) AS VarChar(255)),
	r.S || CAST(BITAND(r.A, r.B) AS VarChar(255)),
	CAST(BITAND(r.A, r.B) AS VarChar(255)) || r.S,
	r.S || ',' || BITAND(r.B, r.C) || ',' || r.C,
	r.S || r.S || CAST(BITAND(r.A, r.B) AS VarChar(255)),
	r.S || CAST(r.A + r.B - BITAND(r.A, r.B) AS VarChar(255)),
	CAST(r.A + r.B - BITAND(r.A, r.B) AS VarChar(255)) || r.S,
	r.S || ',' || (r.B + r.C - BITAND(r.B, r.C)) || ',' || r.C,
	r.S || r.S || CAST(r.A + r.B - BITAND(r.A, r.B) AS VarChar(255)),
	r.S || CAST(r.A + r.B - BITAND(r.A, r.B) * 2 AS VarChar(255)),
	CAST(r.A + r.B - BITAND(r.A, r.B) * 2 AS VarChar(255)) || r.S,
	r.S || ',' || (r.B + r.C - BITAND(r.B, r.C) * 2) || ',' || r.C,
	r.S || r.S || CAST(r.A + r.B - BITAND(r.A, r.B) * 2 AS VarChar(255)),
	r.S || CAST(-r.A AS VarChar(255)),
	CAST(-r.A AS VarChar(255)) || r.S,
	r.S || CAST(-1 - r.A AS VarChar(255)),
	CAST(-1 - r.A AS VarChar(255)) || r.S,
	r.S || '-5',
	'-5' || r.S
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.11.Managed Oracle11
SELECT
	r.S || '-5',
	'-5' || r.S
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

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
