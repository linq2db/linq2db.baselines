-- Access.Jet.Odbc AccessODBC
SELECT
	([r].[A] + [r].[B]) BOR [r].[C],
	[r].[A] BOR ([r].[B] + [r].[C]),
	([r].[A] + [r].[B]) BOR [r].[C],
	[r].[A] BOR ([r].[B] + [r].[C]),
	([r].[A] - [r].[B]) BOR [r].[C],
	([r].[A] - [r].[B]) BOR [r].[C],
	([r].[A] * [r].[B]) BOR [r].[C],
	[r].[A] BOR ([r].[B] * [r].[C]),
	([r].[A] * [r].[B]) BOR [r].[C],
	[r].[A] BOR ([r].[B] * [r].[C]),
	Fix([r].[A] / [r].[B]) BOR [r].[C],
	[r].[A] BOR Fix([r].[B] / [r].[C]),
	Fix([r].[A] / [r].[B]) BOR [r].[C],
	[r].[A] BOR Fix([r].[B] / [r].[C]),
	([r].[A] MOD [r].[B]) BOR [r].[C],
	[r].[A] BOR ([r].[B] MOD [r].[C]),
	([r].[A] MOD [r].[B]) BOR [r].[C],
	[r].[A] BOR ([r].[B] MOD [r].[C]),
	[r].[A] BAND [r].[B] BOR [r].[C],
	[r].[A] BOR [r].[B] BAND [r].[C],
	[r].[A] BAND [r].[B] BOR [r].[C],
	[r].[A] BOR [r].[B] BAND [r].[C],
	([r].[A] BXOR [r].[B]) BOR [r].[C],
	[r].[A] BOR ([r].[B] BXOR [r].[C]),
	([r].[A] BXOR [r].[B]) BOR [r].[C],
	[r].[A] BOR ([r].[B] BXOR [r].[C]),
	([r].[A] + [r].[B]) BOR [r].[C],
	[r].[A] BOR ([r].[B] + [r].[C]),
	([r].[A] + -6) BOR [r].[C],
	([r].[A] - [r].[B]) BOR [r].[C],
	[r].[A] BOR ([r].[B] - [r].[C]),
	([r].[A] - -6) BOR [r].[C],
	([r].[A] * [r].[B]) BOR [r].[C],
	[r].[A] BOR ([r].[B] * [r].[C]),
	([r].[A] * -6) BOR [r].[C],
	([r].[A] + [r].[B]) BOR [r].[C],
	[r].[A] BOR ([r].[B] + [r].[C]),
	([r].[A] + -6) BOR [r].[C],
	[r].[A] BOR (-[r].[B]),
	(-[r].[B]) BOR [r].[C],
	([r].[A] - [r].[B]) BOR [r].[C],
	([r].[A] + [r].[B]) BOR [r].[C],
	([r].[A] * -[r].[B]) BOR [r].[C],
	Fix([r].[A] / -[r].[B]) BOR [r].[C],
	([r].[A] MOD -[r].[B]) BOR [r].[C],
	[r].[A] BAND (-[r].[B]) BOR [r].[C],
	[r].[A] BOR (-[r].[B]) BOR [r].[C],
	([r].[A] BXOR (-[r].[B])) BOR [r].[C],
	[r].[A] BOR (-1 - [r].[B]),
	(-1 - [r].[B]) BOR [r].[C],
	([r].[A] + (-1 - [r].[B])) BOR [r].[C],
	([r].[A] - (-1 - [r].[B])) BOR [r].[C],
	([r].[A] * (-1 - [r].[B])) BOR [r].[C],
	([r].[A] MOD (-1 - [r].[B])) BOR [r].[C],
	[r].[A] BAND (-1 - [r].[B]) BOR [r].[C],
	[r].[A] BOR (-1 - [r].[B]) BOR [r].[C],
	([r].[A] BXOR (-1 - [r].[B])) BOR [r].[C],
	[r].[A] BOR (-5),
	(-5) BOR [r].[C],
	([r].[A] + -5) BOR [r].[C],
	([r].[A] - -5) BOR [r].[C],
	([r].[A] * -5) BOR [r].[C],
	([r].[A] MOD -5) BOR [r].[C],
	[r].[A] BAND (-5) BOR [r].[C],
	[r].[A] BOR (-5) BOR [r].[C],
	([r].[A] BXOR (-5)) BOR [r].[C]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[A] BOR (-5),
	(-5) BOR [r].[C],
	([r].[A] + -5) BOR [r].[C],
	([r].[A] - -5) BOR [r].[C],
	([r].[A] * -5) BOR [r].[C],
	([r].[A] MOD -5) BOR [r].[C],
	[r].[A] BAND (-5) BOR [r].[C],
	[r].[A] BOR (-5) BOR [r].[C],
	([r].[A] BXOR (-5)) BOR [r].[C]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- cell Or/Or(Add(a,b),c): green
-- cell Or/Or(a,Add(b,c)): green
-- cell Or/Or(AsNotNull(Add(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Add(b,c))): green
-- cell Or/Or(Sub(a,b),c): green
-- cell Or/Or(a,Sub(b,c)): skipped
-- cell Or/Or(AsNotNull(Sub(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Sub(b,c))): skipped
-- cell Or/Or(Mul(a,b),c): green
-- cell Or/Or(a,Mul(b,c)): green
-- cell Or/Or(AsNotNull(Mul(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Mul(b,c))): green
-- cell Or/Or(Div(a,b),c): green
-- cell Or/Or(a,Div(b,c)): green
-- cell Or/Or(AsNotNull(Div(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Div(b,c))): green
-- cell Or/Or(Mod(a,b),c): green
-- cell Or/Or(a,Mod(b,c)): green
-- cell Or/Or(AsNotNull(Mod(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Mod(b,c))): green
-- cell Or/Or(And(a,b),c): green
-- cell Or/Or(a,And(b,c)): green
-- cell Or/Or(AsNotNull(And(a,b)),c): green
-- cell Or/Or(a,AsNotNull(And(b,c))): green
-- cell Or/Or(Or(a,b),c): skipped
-- cell Or/Or(a,Or(b,c)): skipped
-- cell Or/Or(AsNotNull(Or(a,b)),c): skipped
-- cell Or/Or(a,AsNotNull(Or(b,c))): skipped
-- cell Or/Or(Xor(a,b),c): green
-- cell Or/Or(a,Xor(b,c)): green
-- cell Or/Or(AsNotNull(Xor(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Xor(b,c))): green
-- cell Or/Or(TAdd(a,b),c): green
-- cell Or/Or(a,TAdd(b,c)): green
-- cell Or/Or(TAdd(a,NegLit),c): green
-- cell Or/Or(TSub(a,b),c): green
-- cell Or/Or(a,TSub(b,c)): green
-- cell Or/Or(TSub(a,NegLit),c): green
-- cell Or/Or(TMul(a,b),c): green
-- cell Or/Or(a,TMul(b,c)): green
-- cell Or/Or(TMul(a,NegLit),c): green
-- cell Or/Or(TAddOffset(a,b),c): green
-- cell Or/Or(a,TAddOffset(b,c)): green
-- cell Or/Or(TAddOffset(a,NegLit),c): green
-- cell Or/Or(a,Neg(b)): green
-- cell Or/Or(Neg(b),c): green
-- cell Or/Or(Add(a,Neg(b)),c): green
-- cell Or/Or(Sub(a,Neg(b)),c): green
-- cell Or/Or(Mul(a,Neg(b)),c): green
-- cell Or/Or(Div(a,Neg(b)),c): green
-- cell Or/Or(Mod(a,Neg(b)),c): green
-- cell Or/Or(And(a,Neg(b)),c): green
-- cell Or/Or(Or(a,Neg(b)),c): green
-- cell Or/Or(Xor(a,Neg(b)),c): green
-- cell Or/Or(a,Not(b)): green
-- cell Or/Or(Not(b),c): green
-- cell Or/Or(Add(a,Not(b)),c): green
-- cell Or/Or(Sub(a,Not(b)),c): green
-- cell Or/Or(Mul(a,Not(b)),c): green
-- cell Or/Or(Div(a,Not(b)),c): skipped
-- cell Or/Or(Mod(a,Not(b)),c): green
-- cell Or/Or(And(a,Not(b)),c): green
-- cell Or/Or(Or(a,Not(b)),c): green
-- cell Or/Or(Xor(a,Not(b)),c): green
-- cell Or/Or(a,NegLit(b)): green
-- cell Or/Or(NegLit(b),c): green
-- cell Or/Or(Add(a,NegLit(b)),c): green
-- cell Or/Or(Sub(a,NegLit(b)),c): green
-- cell Or/Or(Mul(a,NegLit(b)),c): green
-- cell Or/Or(Div(a,NegLit(b)),c): skipped
-- cell Or/Or(Mod(a,NegLit(b)),c): green
-- cell Or/Or(And(a,NegLit(b)),c): green
-- cell Or/Or(Or(a,NegLit(b)),c): green
-- cell Or/Or(Xor(a,NegLit(b)),c): green
-- cell Or/Or(a,NegParam(b)): green
-- cell Or/Or(NegParam(b),c): green
-- cell Or/Or(Add(a,NegParam(b)),c): green
-- cell Or/Or(Sub(a,NegParam(b)),c): green
-- cell Or/Or(Mul(a,NegParam(b)),c): green
-- cell Or/Or(Div(a,NegParam(b)),c): skipped
-- cell Or/Or(Mod(a,NegParam(b)),c): green
-- cell Or/Or(And(a,NegParam(b)),c): green
-- cell Or/Or(Or(a,NegParam(b)),c): green
-- cell Or/Or(Xor(a,NegParam(b)),c): green
