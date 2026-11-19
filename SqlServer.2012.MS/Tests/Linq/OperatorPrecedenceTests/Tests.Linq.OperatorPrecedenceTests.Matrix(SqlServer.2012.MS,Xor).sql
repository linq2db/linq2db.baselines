-- SqlServer.2012.MS SqlServer.2012
SELECT
	[r].[A] + [r].[B] ^ [r].[C],
	[r].[A] ^ [r].[B] + [r].[C],
	[r].[A] + [r].[B] ^ [r].[C],
	[r].[A] ^ [r].[B] + [r].[C],
	[r].[A] - [r].[B] ^ [r].[C],
	[r].[A] ^ [r].[B] - [r].[C],
	[r].[A] - [r].[B] ^ [r].[C],
	[r].[A] ^ [r].[B] - [r].[C],
	[r].[A] * [r].[B] ^ [r].[C],
	[r].[A] ^ [r].[B] * [r].[C],
	[r].[A] * [r].[B] ^ [r].[C],
	[r].[A] ^ [r].[B] * [r].[C],
	[r].[A] / [r].[B] ^ [r].[C],
	[r].[A] ^ [r].[B] / [r].[C],
	[r].[A] / [r].[B] ^ [r].[C],
	[r].[A] ^ [r].[B] / [r].[C],
	[r].[A] % [r].[B] ^ [r].[C],
	[r].[A] ^ [r].[B] % [r].[C],
	[r].[A] % [r].[B] ^ [r].[C],
	[r].[A] ^ [r].[B] % [r].[C],
	[r].[A] & [r].[B] ^ [r].[C],
	[r].[A] ^ [r].[B] & [r].[C],
	[r].[A] & [r].[B] ^ [r].[C],
	[r].[A] ^ [r].[B] & [r].[C],
	[r].[A] | [r].[B] ^ [r].[C],
	[r].[A] ^ [r].[B] | [r].[C],
	[r].[A] | [r].[B] ^ [r].[C],
	[r].[A] ^ [r].[B] | [r].[C],
	[r].[A] ^ -[r].[B],
	-[r].[B] ^ [r].[C],
	[r].[A] - [r].[B] ^ [r].[C],
	[r].[A] + [r].[B] ^ [r].[C],
	[r].[A] * -[r].[B] ^ [r].[C],
	[r].[A] / -[r].[B] ^ [r].[C],
	[r].[A] % -[r].[B] ^ [r].[C],
	[r].[A] & -[r].[B] ^ [r].[C],
	[r].[A] | -[r].[B] ^ [r].[C],
	[r].[A] ^ -[r].[B] ^ [r].[C],
	[r].[A] ^ ~[r].[B],
	[r].[A] + (~[r].[B]) ^ [r].[C],
	[r].[A] - (~[r].[B]) ^ [r].[C],
	[r].[A] * (~[r].[B]) ^ [r].[C],
	[r].[A] / (~[r].[B]) ^ [r].[C],
	[r].[A] % (~[r].[B]) ^ [r].[C],
	[r].[A] & ~[r].[B] ^ [r].[C],
	[r].[A] | ~[r].[B] ^ [r].[C],
	[r].[A] ^ -5,
	-5 ^ [r].[C],
	[r].[A] + -5 ^ [r].[C],
	[r].[A] - -5 ^ [r].[C],
	[r].[A] * -5 ^ [r].[C],
	[r].[A] / -5 ^ [r].[C],
	[r].[A] % -5 ^ [r].[C],
	[r].[A] & -5 ^ [r].[C],
	[r].[A] | -5 ^ [r].[C],
	[r].[A] ^ -5 ^ [r].[C]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[r].[A] ^ -5,
	-5 ^ [r].[C],
	[r].[A] + -5 ^ [r].[C],
	[r].[A] - -5 ^ [r].[C],
	[r].[A] * -5 ^ [r].[C],
	[r].[A] / -5 ^ [r].[C],
	[r].[A] % -5 ^ [r].[C],
	[r].[A] & -5 ^ [r].[C],
	[r].[A] | -5 ^ [r].[C],
	[r].[A] ^ -5 ^ [r].[C]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- cell Xor/Xor(Add(a,b),c): green
-- cell Xor/Xor(a,Add(b,c)): red
-- cell Xor/Xor(AsNotNull(Add(a,b)),c): green
-- cell Xor/Xor(a,AsNotNull(Add(b,c))): red
-- cell Xor/Xor(Sub(a,b),c): green
-- cell Xor/Xor(a,Sub(b,c)): red
-- cell Xor/Xor(AsNotNull(Sub(a,b)),c): green
-- cell Xor/Xor(a,AsNotNull(Sub(b,c))): red
-- cell Xor/Xor(Mul(a,b),c): green
-- cell Xor/Xor(a,Mul(b,c)): green
-- cell Xor/Xor(AsNotNull(Mul(a,b)),c): green
-- cell Xor/Xor(a,AsNotNull(Mul(b,c))): green
-- cell Xor/Xor(Div(a,b),c): green
-- cell Xor/Xor(a,Div(b,c)): green
-- cell Xor/Xor(AsNotNull(Div(a,b)),c): green
-- cell Xor/Xor(a,AsNotNull(Div(b,c))): green
-- cell Xor/Xor(Mod(a,b),c): green
-- cell Xor/Xor(a,Mod(b,c)): green
-- cell Xor/Xor(AsNotNull(Mod(a,b)),c): green
-- cell Xor/Xor(a,AsNotNull(Mod(b,c))): green
-- cell Xor/Xor(And(a,b),c): green
-- cell Xor/Xor(a,And(b,c)): red
-- cell Xor/Xor(AsNotNull(And(a,b)),c): green
-- cell Xor/Xor(a,AsNotNull(And(b,c))): red
-- cell Xor/Xor(Or(a,b),c): green
-- cell Xor/Xor(a,Or(b,c)): red
-- cell Xor/Xor(AsNotNull(Or(a,b)),c): green
-- cell Xor/Xor(a,AsNotNull(Or(b,c))): red
-- cell Xor/Xor(Xor(a,b),c): skipped
-- cell Xor/Xor(a,Xor(b,c)): skipped
-- cell Xor/Xor(AsNotNull(Xor(a,b)),c): skipped
-- cell Xor/Xor(a,AsNotNull(Xor(b,c))): skipped
-- cell Xor/Xor(a,Neg(b)): green
-- cell Xor/Xor(Neg(b),c): green
-- cell Xor/Xor(Add(a,Neg(b)),c): green
-- cell Xor/Xor(Sub(a,Neg(b)),c): green
-- cell Xor/Xor(Mul(a,Neg(b)),c): green
-- cell Xor/Xor(Div(a,Neg(b)),c): green
-- cell Xor/Xor(Mod(a,Neg(b)),c): green
-- cell Xor/Xor(And(a,Neg(b)),c): green
-- cell Xor/Xor(Or(a,Neg(b)),c): green
-- cell Xor/Xor(Xor(a,Neg(b)),c): green
-- cell Xor/Xor(a,Not(b)): green
-- cell Xor/Xor(Not(b),c): skipped
-- cell Xor/Xor(Add(a,Not(b)),c): green
-- cell Xor/Xor(Sub(a,Not(b)),c): green
-- cell Xor/Xor(Mul(a,Not(b)),c): green
-- cell Xor/Xor(Div(a,Not(b)),c): green
-- cell Xor/Xor(Mod(a,Not(b)),c): green
-- cell Xor/Xor(And(a,Not(b)),c): green
-- cell Xor/Xor(Or(a,Not(b)),c): green
-- cell Xor/Xor(Xor(a,Not(b)),c): skipped
-- cell Xor/Xor(a,NegLit(b)): green
-- cell Xor/Xor(NegLit(b),c): green
-- cell Xor/Xor(Add(a,NegLit(b)),c): green
-- cell Xor/Xor(Sub(a,NegLit(b)),c): green
-- cell Xor/Xor(Mul(a,NegLit(b)),c): green
-- cell Xor/Xor(Div(a,NegLit(b)),c): green
-- cell Xor/Xor(Mod(a,NegLit(b)),c): green
-- cell Xor/Xor(And(a,NegLit(b)),c): green
-- cell Xor/Xor(Or(a,NegLit(b)),c): green
-- cell Xor/Xor(Xor(a,NegLit(b)),c): green
-- cell Xor/Xor(a,NegParam(b)): green
-- cell Xor/Xor(NegParam(b),c): green
-- cell Xor/Xor(Add(a,NegParam(b)),c): green
-- cell Xor/Xor(Sub(a,NegParam(b)),c): green
-- cell Xor/Xor(Mul(a,NegParam(b)),c): green
-- cell Xor/Xor(Div(a,NegParam(b)),c): green
-- cell Xor/Xor(Mod(a,NegParam(b)),c): green
-- cell Xor/Xor(And(a,NegParam(b)),c): green
-- cell Xor/Xor(Or(a,NegParam(b)),c): green
-- cell Xor/Xor(Xor(a,NegParam(b)),c): green
