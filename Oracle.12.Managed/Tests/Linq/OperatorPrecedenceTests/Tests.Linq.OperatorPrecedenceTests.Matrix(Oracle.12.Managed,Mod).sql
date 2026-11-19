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
	MOD(r.A * r.B, r.C),
	MOD(r.A, r.B * r.C),
	MOD(r.A * r.B, r.C),
	MOD(r.A, r.B * r.C),
	MOD(BITAND(r.A, r.B), r.C),
	MOD(BITAND(r.A, r.B), r.C),
	MOD((r.A + r.B) - BITAND(r.A, r.B), r.C),
	MOD(r.A, (r.B + r.C) - BITAND(r.B, r.C)),
	MOD((r.A + r.B) - BITAND(r.A, r.B), r.C),
	MOD(r.A, (r.B + r.C) - BITAND(r.B, r.C)),
	MOD((r.A + r.B) - BITAND(r.A, r.B) * 2, r.C),
	MOD(r.A, (r.B + r.C) - BITAND(r.B, r.C) * 2),
	MOD((r.A + r.B) - BITAND(r.A, r.B) * 2, r.C),
	MOD(r.A, (r.B + r.C) - BITAND(r.B, r.C) * 2),
	MOD(r.A, -r.B),
	MOD(r.A - r.B, r.C),
	MOD(r.A + r.B, r.C),
	MOD(r.A * -r.B, r.C),
	MOD(BITAND(r.A, -r.B), r.C),
	MOD((r.A - r.B) - BITAND(r.A, -r.B), r.C),
	MOD((r.A - r.B) - BITAND(r.A, -r.B) * 2, r.C),
	MOD(r.A, -1 - r.B),
	MOD(-1 - r.B, r.C),
	MOD(r.A + (-1 - r.B), r.C),
	MOD(r.A - (-1 - r.B), r.C),
	MOD(r.A * (-1 - r.B), r.C),
	MOD(r.A / (-1 - r.B), r.C),
	MOD(MOD(r.A, -1 - r.B), r.C),
	MOD(BITAND(r.A, -1 - r.B), r.C),
	MOD((r.A + (-1 - r.B)) - BITAND(r.A, -1 - r.B), r.C),
	MOD((r.A + (-1 - r.B)) - BITAND(r.A, -1 - r.B) * 2, r.C),
	MOD(r.A, -5),
	MOD(-5, r.C),
	MOD(r.A + -5, r.C),
	MOD(r.A - -5, r.C),
	MOD(r.A * -5, r.C),
	MOD(r.A / -5, r.C),
	MOD(MOD(r.A, -5), r.C),
	MOD(BITAND(r.A, -5), r.C),
	MOD((r.A + -5) - BITAND(r.A, -5), r.C),
	MOD((r.A + -5) - BITAND(r.A, -5) * 2, r.C)
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
	MOD(r.A / -5, r.C),
	MOD(MOD(r.A, -5), r.C),
	MOD(BITAND(r.A, -5), r.C),
	MOD((r.A + -5) - BITAND(r.A, -5), r.C),
	MOD((r.A + -5) - BITAND(r.A, -5) * 2, r.C)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- cell Mod/Mod(Add(a,b),c): green
-- cell Mod/Mod(a,Add(b,c)): green
-- cell Mod/Mod(AsNotNull(Add(a,b)),c): green
-- cell Mod/Mod(a,AsNotNull(Add(b,c))): green
-- cell Mod/Mod(Sub(a,b),c): green
-- cell Mod/Mod(a,Sub(b,c)): green
-- cell Mod/Mod(AsNotNull(Sub(a,b)),c): green
-- cell Mod/Mod(a,AsNotNull(Sub(b,c))): green
-- cell Mod/Mod(Mul(a,b),c): green
-- cell Mod/Mod(a,Mul(b,c)): green
-- cell Mod/Mod(AsNotNull(Mul(a,b)),c): green
-- cell Mod/Mod(a,AsNotNull(Mul(b,c))): green
-- cell Mod/Mod(Div(a,b),c): skipped
-- cell Mod/Mod(a,Div(b,c)): skipped
-- cell Mod/Mod(AsNotNull(Div(a,b)),c): skipped
-- cell Mod/Mod(a,AsNotNull(Div(b,c))): skipped
-- cell Mod/Mod(Mod(a,b),c): skipped
-- cell Mod/Mod(a,Mod(b,c)): skipped
-- cell Mod/Mod(AsNotNull(Mod(a,b)),c): skipped
-- cell Mod/Mod(a,AsNotNull(Mod(b,c))): skipped
-- cell Mod/Mod(And(a,b),c): green
-- cell Mod/Mod(a,And(b,c)): skipped
-- cell Mod/Mod(AsNotNull(And(a,b)),c): green
-- cell Mod/Mod(a,AsNotNull(And(b,c))): skipped
-- cell Mod/Mod(Or(a,b),c): green
-- cell Mod/Mod(a,Or(b,c)): green
-- cell Mod/Mod(AsNotNull(Or(a,b)),c): green
-- cell Mod/Mod(a,AsNotNull(Or(b,c))): green
-- cell Mod/Mod(Xor(a,b),c): green
-- cell Mod/Mod(a,Xor(b,c)): green
-- cell Mod/Mod(AsNotNull(Xor(a,b)),c): green
-- cell Mod/Mod(a,AsNotNull(Xor(b,c))): green
-- cell Mod/Mod(a,Neg(b)): green
-- cell Mod/Mod(Neg(b),c): skipped
-- cell Mod/Mod(Add(a,Neg(b)),c): green
-- cell Mod/Mod(Sub(a,Neg(b)),c): green
-- cell Mod/Mod(Mul(a,Neg(b)),c): green
-- cell Mod/Mod(Div(a,Neg(b)),c): skipped
-- cell Mod/Mod(Mod(a,Neg(b)),c): skipped
-- cell Mod/Mod(And(a,Neg(b)),c): green
-- cell Mod/Mod(Or(a,Neg(b)),c): green
-- cell Mod/Mod(Xor(a,Neg(b)),c): green
-- cell Mod/Mod(a,Not(b)): green
-- cell Mod/Mod(Not(b),c): green
-- cell Mod/Mod(Add(a,Not(b)),c): green
-- cell Mod/Mod(Sub(a,Not(b)),c): green
-- cell Mod/Mod(Mul(a,Not(b)),c): green
-- cell Mod/Mod(Div(a,Not(b)),c): green
-- cell Mod/Mod(Mod(a,Not(b)),c): green
-- cell Mod/Mod(And(a,Not(b)),c): green
-- cell Mod/Mod(Or(a,Not(b)),c): green
-- cell Mod/Mod(Xor(a,Not(b)),c): green
-- cell Mod/Mod(a,NegLit(b)): green
-- cell Mod/Mod(NegLit(b),c): green
-- cell Mod/Mod(Add(a,NegLit(b)),c): green
-- cell Mod/Mod(Sub(a,NegLit(b)),c): green
-- cell Mod/Mod(Mul(a,NegLit(b)),c): green
-- cell Mod/Mod(Div(a,NegLit(b)),c): green
-- cell Mod/Mod(Mod(a,NegLit(b)),c): green
-- cell Mod/Mod(And(a,NegLit(b)),c): green
-- cell Mod/Mod(Or(a,NegLit(b)),c): green
-- cell Mod/Mod(Xor(a,NegLit(b)),c): green
-- cell Mod/Mod(a,NegParam(b)): green
-- cell Mod/Mod(NegParam(b),c): green
-- cell Mod/Mod(Add(a,NegParam(b)),c): green
-- cell Mod/Mod(Sub(a,NegParam(b)),c): green
-- cell Mod/Mod(Mul(a,NegParam(b)),c): green
-- cell Mod/Mod(Div(a,NegParam(b)),c): green
-- cell Mod/Mod(Mod(a,NegParam(b)),c): green
-- cell Mod/Mod(And(a,NegParam(b)),c): green
-- cell Mod/Mod(Or(a,NegParam(b)),c): green
-- cell Mod/Mod(Xor(a,NegParam(b)),c): green
