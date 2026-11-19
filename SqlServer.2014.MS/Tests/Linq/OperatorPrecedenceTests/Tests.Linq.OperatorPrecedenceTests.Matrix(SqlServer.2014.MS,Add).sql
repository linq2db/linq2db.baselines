-- SqlServer.2014.MS SqlServer.2014
SELECT
	[r].[A] - [r].[B] + [r].[C],
	[r].[A] - [r].[B] + [r].[C],
	[r].[A] * [r].[B] + [r].[C],
	[r].[A] + [r].[B] * [r].[C],
	[r].[A] * [r].[B] + [r].[C],
	[r].[A] + [r].[B] * [r].[C],
	[r].[A] / [r].[B] + [r].[C],
	[r].[A] + [r].[B] / [r].[C],
	[r].[A] / [r].[B] + [r].[C],
	[r].[A] + [r].[B] / [r].[C],
	[r].[A] % [r].[B] + [r].[C],
	[r].[A] + [r].[B] % [r].[C],
	[r].[A] % [r].[B] + [r].[C],
	[r].[A] + [r].[B] % [r].[C],
	([r].[A] & [r].[B]) + [r].[C],
	[r].[A] + ([r].[B] & [r].[C]),
	([r].[A] & [r].[B]) + [r].[C],
	[r].[A] + ([r].[B] & [r].[C]),
	([r].[A] | [r].[B]) + [r].[C],
	[r].[A] + ([r].[B] | [r].[C]),
	([r].[A] | [r].[B]) + [r].[C],
	[r].[A] + ([r].[B] | [r].[C]),
	([r].[A] ^ [r].[B]) + [r].[C],
	[r].[A] + ([r].[B] ^ [r].[C]),
	([r].[A] ^ [r].[B]) + [r].[C],
	[r].[A] + ([r].[B] ^ [r].[C]),
	[r].[A] - [r].[B],
	-[r].[B] + [r].[C],
	[r].[A] - [r].[B] + [r].[C],
	[r].[A] * -[r].[B] + [r].[C],
	[r].[A] / -[r].[B] + [r].[C],
	[r].[A] % -[r].[B] + [r].[C],
	([r].[A] & -[r].[B]) + [r].[C],
	([r].[A] | -[r].[B]) + [r].[C],
	([r].[A] ^ -[r].[B]) + [r].[C],
	[r].[A] + (~[r].[B]),
	(~[r].[B]) + [r].[C],
	[r].[A] + (~[r].[B]) + [r].[C],
	[r].[A] * (~[r].[B]) + [r].[C],
	[r].[A] % (~[r].[B]) + [r].[C],
	([r].[A] & ~[r].[B]) + [r].[C],
	([r].[A] | ~[r].[B]) + [r].[C],
	([r].[A] ^ ~[r].[B]) + [r].[C],
	[r].[A] + -5,
	-5 + [r].[C],
	[r].[A] + -5 + [r].[C],
	[r].[A] - -5 + [r].[C],
	[r].[A] * -5 + [r].[C],
	[r].[A] % -5 + [r].[C],
	([r].[A] & -5) + [r].[C],
	([r].[A] | -5) + [r].[C],
	([r].[A] ^ -5) + [r].[C]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[r].[A] + -5,
	-5 + [r].[C],
	[r].[A] + -5 + [r].[C],
	[r].[A] - -5 + [r].[C],
	[r].[A] * -5 + [r].[C],
	[r].[A] % -5 + [r].[C],
	([r].[A] & -5) + [r].[C],
	([r].[A] | -5) + [r].[C],
	([r].[A] ^ -5) + [r].[C]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- cell Add/Add(Add(a,b),c): skipped
-- cell Add/Add(a,Add(b,c)): skipped
-- cell Add/Add(AsNotNull(Add(a,b)),c): skipped
-- cell Add/Add(a,AsNotNull(Add(b,c))): skipped
-- cell Add/Add(Sub(a,b),c): green
-- cell Add/Add(a,Sub(b,c)): skipped
-- cell Add/Add(AsNotNull(Sub(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Sub(b,c))): skipped
-- cell Add/Add(Mul(a,b),c): green
-- cell Add/Add(a,Mul(b,c)): green
-- cell Add/Add(AsNotNull(Mul(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Mul(b,c))): green
-- cell Add/Add(Div(a,b),c): green
-- cell Add/Add(a,Div(b,c)): green
-- cell Add/Add(AsNotNull(Div(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Div(b,c))): green
-- cell Add/Add(Mod(a,b),c): green
-- cell Add/Add(a,Mod(b,c)): green
-- cell Add/Add(AsNotNull(Mod(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Mod(b,c))): green
-- cell Add/Add(And(a,b),c): green
-- cell Add/Add(a,And(b,c)): green
-- cell Add/Add(AsNotNull(And(a,b)),c): green
-- cell Add/Add(a,AsNotNull(And(b,c))): green
-- cell Add/Add(Or(a,b),c): green
-- cell Add/Add(a,Or(b,c)): green
-- cell Add/Add(AsNotNull(Or(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Or(b,c))): green
-- cell Add/Add(Xor(a,b),c): green
-- cell Add/Add(a,Xor(b,c)): green
-- cell Add/Add(AsNotNull(Xor(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Xor(b,c))): green
-- cell Add/Add(a,Neg(b)): green
-- cell Add/Add(Neg(b),c): green
-- cell Add/Add(Add(a,Neg(b)),c): green
-- cell Add/Add(Sub(a,Neg(b)),c): skipped
-- cell Add/Add(Mul(a,Neg(b)),c): green
-- cell Add/Add(Div(a,Neg(b)),c): green
-- cell Add/Add(Mod(a,Neg(b)),c): green
-- cell Add/Add(And(a,Neg(b)),c): green
-- cell Add/Add(Or(a,Neg(b)),c): green
-- cell Add/Add(Xor(a,Neg(b)),c): green
-- cell Add/Add(a,Not(b)): green
-- cell Add/Add(Not(b),c): green
-- cell Add/Add(Add(a,Not(b)),c): green
-- cell Add/Add(Sub(a,Not(b)),c): skipped
-- cell Add/Add(Mul(a,Not(b)),c): green
-- cell Add/Add(Div(a,Not(b)),c): skipped
-- cell Add/Add(Mod(a,Not(b)),c): green
-- cell Add/Add(And(a,Not(b)),c): green
-- cell Add/Add(Or(a,Not(b)),c): green
-- cell Add/Add(Xor(a,Not(b)),c): green
-- cell Add/Add(a,NegLit(b)): green
-- cell Add/Add(NegLit(b),c): green
-- cell Add/Add(Add(a,NegLit(b)),c): green
-- cell Add/Add(Sub(a,NegLit(b)),c): green
-- cell Add/Add(Mul(a,NegLit(b)),c): green
-- cell Add/Add(Div(a,NegLit(b)),c): skipped
-- cell Add/Add(Mod(a,NegLit(b)),c): green
-- cell Add/Add(And(a,NegLit(b)),c): green
-- cell Add/Add(Or(a,NegLit(b)),c): green
-- cell Add/Add(Xor(a,NegLit(b)),c): green
-- cell Add/Add(a,NegParam(b)): green
-- cell Add/Add(NegParam(b),c): green
-- cell Add/Add(Add(a,NegParam(b)),c): green
-- cell Add/Add(Sub(a,NegParam(b)),c): green
-- cell Add/Add(Mul(a,NegParam(b)),c): green
-- cell Add/Add(Div(a,NegParam(b)),c): skipped
-- cell Add/Add(Mod(a,NegParam(b)),c): green
-- cell Add/Add(And(a,NegParam(b)),c): green
-- cell Add/Add(Or(a,NegParam(b)),c): green
-- cell Add/Add(Xor(a,NegParam(b)),c): green
