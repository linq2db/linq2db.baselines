-- SqlServer.2022
SELECT
	[r].[A] - ([r].[B] + [r].[C]),
	[r].[A] - ([r].[B] + [r].[C]),
	([r].[A] - [r].[B]) - [r].[C],
	[r].[A] - ([r].[B] - [r].[C]),
	([r].[A] - [r].[B]) - [r].[C],
	[r].[A] - ([r].[B] - [r].[C]),
	[r].[A] * [r].[B] - [r].[C],
	[r].[A] - [r].[B] * [r].[C],
	[r].[A] * [r].[B] - [r].[C],
	[r].[A] - [r].[B] * [r].[C],
	[r].[A] / [r].[B] - [r].[C],
	[r].[A] - [r].[B] / [r].[C],
	[r].[A] / [r].[B] - [r].[C],
	[r].[A] - [r].[B] / [r].[C],
	[r].[A] % [r].[B] - [r].[C],
	[r].[A] - [r].[B] % [r].[C],
	[r].[A] % [r].[B] - [r].[C],
	[r].[A] - [r].[B] % [r].[C],
	([r].[A] & [r].[B]) - [r].[C],
	[r].[A] - ([r].[B] & [r].[C]),
	([r].[A] & [r].[B]) - [r].[C],
	[r].[A] - ([r].[B] & [r].[C]),
	([r].[A] | [r].[B]) - [r].[C],
	[r].[A] - ([r].[B] | [r].[C]),
	([r].[A] | [r].[B]) - [r].[C],
	[r].[A] - ([r].[B] | [r].[C]),
	([r].[A] ^ [r].[B]) - [r].[C],
	[r].[A] - ([r].[B] ^ [r].[C]),
	([r].[A] ^ [r].[B]) - [r].[C],
	[r].[A] - ([r].[B] ^ [r].[C]),
	[r].[A] + [r].[B],
	-[r].[B] - [r].[C],
	([r].[A] - [r].[B]) - [r].[C],
	[r].[A] * -[r].[B] - [r].[C],
	[r].[A] / -[r].[B] - [r].[C],
	[r].[A] % -[r].[B] - [r].[C],
	([r].[A] & -[r].[B]) - [r].[C],
	([r].[A] | -[r].[B]) - [r].[C],
	([r].[A] ^ -[r].[B]) - [r].[C],
	[r].[A] - (~[r].[B]),
	(~[r].[B]) - [r].[C],
	([r].[A] + (~[r].[B])) - [r].[C],
	[r].[A] * (~[r].[B]) - [r].[C],
	[r].[A] / (~[r].[B]) - [r].[C],
	[r].[A] % (~[r].[B]) - [r].[C],
	([r].[A] & ~[r].[B]) - [r].[C],
	([r].[A] | ~[r].[B]) - [r].[C],
	([r].[A] ^ ~[r].[B]) - [r].[C],
	[r].[A] - -5,
	-5 - [r].[C],
	([r].[A] + -5) - [r].[C],
	([r].[A] - -5) - [r].[C],
	[r].[A] * -5 - [r].[C],
	[r].[A] / -5 - [r].[C],
	[r].[A] % -5 - [r].[C],
	([r].[A] & -5) - [r].[C],
	([r].[A] | -5) - [r].[C],
	([r].[A] ^ -5) - [r].[C]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2022
SELECT
	[r].[A] - -5,
	-5 - [r].[C],
	([r].[A] + -5) - [r].[C],
	([r].[A] - -5) - [r].[C],
	[r].[A] * -5 - [r].[C],
	[r].[A] / -5 - [r].[C],
	[r].[A] % -5 - [r].[C],
	([r].[A] & -5) - [r].[C],
	([r].[A] | -5) - [r].[C],
	([r].[A] ^ -5) - [r].[C]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- cell Sub/Sub(Add(a,b),c): skipped
-- cell Sub/Sub(a,Add(b,c)): green
-- cell Sub/Sub(AsNotNull(Add(a,b)),c): skipped
-- cell Sub/Sub(a,AsNotNull(Add(b,c))): green
-- cell Sub/Sub(Sub(a,b),c): green
-- cell Sub/Sub(a,Sub(b,c)): green
-- cell Sub/Sub(AsNotNull(Sub(a,b)),c): green
-- cell Sub/Sub(a,AsNotNull(Sub(b,c))): green
-- cell Sub/Sub(Mul(a,b),c): green
-- cell Sub/Sub(a,Mul(b,c)): green
-- cell Sub/Sub(AsNotNull(Mul(a,b)),c): green
-- cell Sub/Sub(a,AsNotNull(Mul(b,c))): green
-- cell Sub/Sub(Div(a,b),c): green
-- cell Sub/Sub(a,Div(b,c)): green
-- cell Sub/Sub(AsNotNull(Div(a,b)),c): green
-- cell Sub/Sub(a,AsNotNull(Div(b,c))): green
-- cell Sub/Sub(Mod(a,b),c): green
-- cell Sub/Sub(a,Mod(b,c)): green
-- cell Sub/Sub(AsNotNull(Mod(a,b)),c): green
-- cell Sub/Sub(a,AsNotNull(Mod(b,c))): green
-- cell Sub/Sub(And(a,b),c): green
-- cell Sub/Sub(a,And(b,c)): green
-- cell Sub/Sub(AsNotNull(And(a,b)),c): green
-- cell Sub/Sub(a,AsNotNull(And(b,c))): green
-- cell Sub/Sub(Or(a,b),c): green
-- cell Sub/Sub(a,Or(b,c)): green
-- cell Sub/Sub(AsNotNull(Or(a,b)),c): green
-- cell Sub/Sub(a,AsNotNull(Or(b,c))): green
-- cell Sub/Sub(Xor(a,b),c): green
-- cell Sub/Sub(a,Xor(b,c)): green
-- cell Sub/Sub(AsNotNull(Xor(a,b)),c): green
-- cell Sub/Sub(a,AsNotNull(Xor(b,c))): green
-- cell Sub/Sub(a,Neg(b)): green
-- cell Sub/Sub(Neg(b),c): green
-- cell Sub/Sub(Add(a,Neg(b)),c): green
-- cell Sub/Sub(Sub(a,Neg(b)),c): skipped
-- cell Sub/Sub(Mul(a,Neg(b)),c): green
-- cell Sub/Sub(Div(a,Neg(b)),c): green
-- cell Sub/Sub(Mod(a,Neg(b)),c): green
-- cell Sub/Sub(And(a,Neg(b)),c): green
-- cell Sub/Sub(Or(a,Neg(b)),c): green
-- cell Sub/Sub(Xor(a,Neg(b)),c): green
-- cell Sub/Sub(a,Not(b)): green
-- cell Sub/Sub(Not(b),c): green
-- cell Sub/Sub(Add(a,Not(b)),c): green
-- cell Sub/Sub(Sub(a,Not(b)),c): skipped
-- cell Sub/Sub(Mul(a,Not(b)),c): green
-- cell Sub/Sub(Div(a,Not(b)),c): green
-- cell Sub/Sub(Mod(a,Not(b)),c): green
-- cell Sub/Sub(And(a,Not(b)),c): green
-- cell Sub/Sub(Or(a,Not(b)),c): green
-- cell Sub/Sub(Xor(a,Not(b)),c): green
-- cell Sub/Sub(a,NegLit(b)): green
-- cell Sub/Sub(NegLit(b),c): green
-- cell Sub/Sub(Add(a,NegLit(b)),c): green
-- cell Sub/Sub(Sub(a,NegLit(b)),c): green
-- cell Sub/Sub(Mul(a,NegLit(b)),c): green
-- cell Sub/Sub(Div(a,NegLit(b)),c): green
-- cell Sub/Sub(Mod(a,NegLit(b)),c): green
-- cell Sub/Sub(And(a,NegLit(b)),c): green
-- cell Sub/Sub(Or(a,NegLit(b)),c): green
-- cell Sub/Sub(Xor(a,NegLit(b)),c): green
-- cell Sub/Sub(a,NegParam(b)): green
-- cell Sub/Sub(NegParam(b),c): green
-- cell Sub/Sub(Add(a,NegParam(b)),c): green
-- cell Sub/Sub(Sub(a,NegParam(b)),c): green
-- cell Sub/Sub(Mul(a,NegParam(b)),c): green
-- cell Sub/Sub(Div(a,NegParam(b)),c): green
-- cell Sub/Sub(Mod(a,NegParam(b)),c): green
-- cell Sub/Sub(And(a,NegParam(b)),c): green
-- cell Sub/Sub(Or(a,NegParam(b)),c): green
-- cell Sub/Sub(Xor(a,NegParam(b)),c): green
