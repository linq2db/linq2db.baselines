-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	([r].[A] + [r].[B]) * [r].[C],
	[r].[A] * ([r].[B] + [r].[C]),
	([r].[A] + [r].[B]) * [r].[C],
	[r].[A] * ([r].[B] + [r].[C]),
	([r].[A] - [r].[B]) * [r].[C],
	[r].[A] * ([r].[B] - [r].[C]),
	([r].[A] - [r].[B]) * [r].[C],
	[r].[A] * ([r].[B] - [r].[C]),
	([r].[A] / [r].[B]) * [r].[C],
	[r].[A] * ([r].[B] / [r].[C]),
	([r].[A] / [r].[B]) * [r].[C],
	[r].[A] * ([r].[B] / [r].[C]),
	([r].[A] MOD [r].[B]) * [r].[C],
	[r].[A] * ([r].[B] MOD [r].[C]),
	([r].[A] MOD [r].[B]) * [r].[C],
	[r].[A] * ([r].[B] MOD [r].[C]),
	([r].[A] BAND [r].[B]) * [r].[C],
	[r].[A] * ([r].[B] BAND [r].[C]),
	([r].[A] BAND [r].[B]) * [r].[C],
	[r].[A] * ([r].[B] BAND [r].[C]),
	([r].[A] BOR [r].[B]) * [r].[C],
	[r].[A] * ([r].[B] BOR [r].[C]),
	([r].[A] BOR [r].[B]) * [r].[C],
	[r].[A] * ([r].[B] BOR [r].[C]),
	([r].[A] BXOR [r].[B]) * [r].[C],
	[r].[A] * ([r].[B] BXOR [r].[C]),
	([r].[A] BXOR [r].[B]) * [r].[C],
	[r].[A] * ([r].[B] BXOR [r].[C]),
	[r].[A] * -[r].[B],
	([r].[A] - [r].[B]) * [r].[C],
	([r].[A] + [r].[B]) * [r].[C],
	([r].[A] / -[r].[B]) * [r].[C],
	([r].[A] MOD -[r].[B]) * [r].[C],
	([r].[A] BAND -[r].[B]) * [r].[C],
	([r].[A] BOR -[r].[B]) * [r].[C],
	([r].[A] BXOR -[r].[B]) * [r].[C],
	[r].[A] * (-1 - [r].[B]),
	(-1 - [r].[B]) * [r].[C],
	([r].[A] + -1 - [r].[B]) * [r].[C],
	([r].[A] - (-1 - [r].[B])) * [r].[C],
	([r].[A] * (-1 - [r].[B])) * [r].[C],
	([r].[A] / (-1 - [r].[B])) * [r].[C],
	([r].[A] MOD (-1 - [r].[B])) * [r].[C],
	([r].[A] BAND -1 - [r].[B]) * [r].[C],
	([r].[A] BOR -1 - [r].[B]) * [r].[C],
	([r].[A] BXOR -1 - [r].[B]) * [r].[C],
	[r].[A] * -5,
	-5 * [r].[C],
	([r].[A] + -5) * [r].[C],
	([r].[A] - -5) * [r].[C],
	([r].[A] * -5) * [r].[C],
	([r].[A] / -5) * [r].[C],
	([r].[A] MOD -5) * [r].[C],
	([r].[A] BAND -5) * [r].[C],
	([r].[A] BOR -5) * [r].[C],
	([r].[A] BXOR -5) * [r].[C]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[A] * -5,
	-5 * [r].[C],
	([r].[A] + -5) * [r].[C],
	([r].[A] - -5) * [r].[C],
	([r].[A] * -5) * [r].[C],
	([r].[A] / -5) * [r].[C],
	([r].[A] MOD -5) * [r].[C],
	([r].[A] BAND -5) * [r].[C],
	([r].[A] BOR -5) * [r].[C],
	([r].[A] BXOR -5) * [r].[C]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- cell Mul/Mul(Add(a,b),c): green
-- cell Mul/Mul(a,Add(b,c)): green
-- cell Mul/Mul(AsNotNull(Add(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Add(b,c))): green
-- cell Mul/Mul(Sub(a,b),c): green
-- cell Mul/Mul(a,Sub(b,c)): green
-- cell Mul/Mul(AsNotNull(Sub(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Sub(b,c))): green
-- cell Mul/Mul(Mul(a,b),c): skipped
-- cell Mul/Mul(a,Mul(b,c)): skipped
-- cell Mul/Mul(AsNotNull(Mul(a,b)),c): skipped
-- cell Mul/Mul(a,AsNotNull(Mul(b,c))): skipped
-- cell Mul/Mul(Div(a,b),c): red
-- cell Mul/Mul(a,Div(b,c)): red
-- cell Mul/Mul(AsNotNull(Div(a,b)),c): red
-- cell Mul/Mul(a,AsNotNull(Div(b,c))): red
-- cell Mul/Mul(Mod(a,b),c): green
-- cell Mul/Mul(a,Mod(b,c)): green
-- cell Mul/Mul(AsNotNull(Mod(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Mod(b,c))): green
-- cell Mul/Mul(And(a,b),c): green
-- cell Mul/Mul(a,And(b,c)): green
-- cell Mul/Mul(AsNotNull(And(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(And(b,c))): green
-- cell Mul/Mul(Or(a,b),c): green
-- cell Mul/Mul(a,Or(b,c)): green
-- cell Mul/Mul(AsNotNull(Or(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Or(b,c))): green
-- cell Mul/Mul(Xor(a,b),c): green
-- cell Mul/Mul(a,Xor(b,c)): green
-- cell Mul/Mul(AsNotNull(Xor(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Xor(b,c))): green
-- cell Mul/Mul(a,Neg(b)): green
-- cell Mul/Mul(Neg(b),c): skipped
-- cell Mul/Mul(Add(a,Neg(b)),c): green
-- cell Mul/Mul(Sub(a,Neg(b)),c): green
-- cell Mul/Mul(Mul(a,Neg(b)),c): skipped
-- cell Mul/Mul(Div(a,Neg(b)),c): red
-- cell Mul/Mul(Mod(a,Neg(b)),c): green
-- cell Mul/Mul(And(a,Neg(b)),c): green
-- cell Mul/Mul(Or(a,Neg(b)),c): green
-- cell Mul/Mul(Xor(a,Neg(b)),c): green
-- cell Mul/Mul(a,Not(b)): green
-- cell Mul/Mul(Not(b),c): green
-- cell Mul/Mul(Add(a,Not(b)),c): green
-- cell Mul/Mul(Sub(a,Not(b)),c): green
-- cell Mul/Mul(Mul(a,Not(b)),c): green
-- cell Mul/Mul(Div(a,Not(b)),c): red
-- cell Mul/Mul(Mod(a,Not(b)),c): green
-- cell Mul/Mul(And(a,Not(b)),c): green
-- cell Mul/Mul(Or(a,Not(b)),c): green
-- cell Mul/Mul(Xor(a,Not(b)),c): green
-- cell Mul/Mul(a,NegLit(b)): green
-- cell Mul/Mul(NegLit(b),c): green
-- cell Mul/Mul(Add(a,NegLit(b)),c): green
-- cell Mul/Mul(Sub(a,NegLit(b)),c): green
-- cell Mul/Mul(Mul(a,NegLit(b)),c): green
-- cell Mul/Mul(Div(a,NegLit(b)),c): red
-- cell Mul/Mul(Mod(a,NegLit(b)),c): green
-- cell Mul/Mul(And(a,NegLit(b)),c): green
-- cell Mul/Mul(Or(a,NegLit(b)),c): green
-- cell Mul/Mul(Xor(a,NegLit(b)),c): green
-- cell Mul/Mul(a,NegParam(b)): green
-- cell Mul/Mul(NegParam(b),c): green
-- cell Mul/Mul(Add(a,NegParam(b)),c): green
-- cell Mul/Mul(Sub(a,NegParam(b)),c): green
-- cell Mul/Mul(Mul(a,NegParam(b)),c): green
-- cell Mul/Mul(Div(a,NegParam(b)),c): red
-- cell Mul/Mul(Mod(a,NegParam(b)),c): green
-- cell Mul/Mul(And(a,NegParam(b)),c): green
-- cell Mul/Mul(Or(a,NegParam(b)),c): green
-- cell Mul/Mul(Xor(a,NegParam(b)),c): green
