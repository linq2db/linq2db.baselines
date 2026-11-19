-- Access.Jet.OleDb AccessOleDb
SELECT
	[r].[A] + [r].[B] BAND [r].[C],
	[r].[A] BAND [r].[B] + [r].[C],
	[r].[A] + [r].[B] BAND [r].[C],
	[r].[A] BAND [r].[B] + [r].[C],
	[r].[A] - [r].[B] BAND [r].[C],
	[r].[A] BAND [r].[B] - [r].[C],
	[r].[A] - [r].[B] BAND [r].[C],
	[r].[A] BAND [r].[B] - [r].[C],
	[r].[A] * [r].[B] BAND [r].[C],
	[r].[A] BAND [r].[B] * [r].[C],
	[r].[A] * [r].[B] BAND [r].[C],
	[r].[A] BAND [r].[B] * [r].[C],
	[r].[A] BAND [r].[B] / [r].[C],
	[r].[A] BAND [r].[B] / [r].[C],
	[r].[A] BAND [r].[B] MOD [r].[C],
	[r].[A] BAND [r].[B] MOD [r].[C],
	([r].[A] BOR [r].[B]) BAND [r].[C],
	[r].[A] BAND ([r].[B] BOR [r].[C]),
	([r].[A] BOR [r].[B]) BAND [r].[C],
	[r].[A] BAND ([r].[B] BOR [r].[C]),
	([r].[A] BXOR [r].[B]) BAND [r].[C],
	[r].[A] BAND ([r].[B] BXOR [r].[C]),
	([r].[A] BXOR [r].[B]) BAND [r].[C],
	[r].[A] BAND ([r].[B] BXOR [r].[C]),
	[r].[A] BAND -[r].[B],
	-[r].[B] BAND [r].[C],
	[r].[A] - [r].[B] BAND [r].[C],
	[r].[A] + [r].[B] BAND [r].[C],
	[r].[A] * -[r].[B] BAND [r].[C],
	[r].[A] BAND -[r].[B] BAND [r].[C],
	([r].[A] BOR -[r].[B]) BAND [r].[C],
	([r].[A] BXOR -[r].[B]) BAND [r].[C],
	[r].[A] BAND -1 - [r].[B],
	-1 - [r].[B] BAND [r].[C],
	[r].[A] + -1 - [r].[B] BAND [r].[C],
	[r].[A] - (-1 - [r].[B]) BAND [r].[C],
	[r].[A] * (-1 - [r].[B]) BAND [r].[C],
	[r].[A] / (-1 - [r].[B]) BAND [r].[C],
	[r].[A] MOD (-1 - [r].[B]) BAND [r].[C],
	[r].[A] BAND -1 - [r].[B] BAND [r].[C],
	([r].[A] BOR -1 - [r].[B]) BAND [r].[C],
	([r].[A] BXOR -1 - [r].[B]) BAND [r].[C],
	[r].[A] BAND -5,
	-5 BAND [r].[C],
	[r].[A] + -5 BAND [r].[C],
	[r].[A] - -5 BAND [r].[C],
	[r].[A] * -5 BAND [r].[C],
	[r].[A] / -5 BAND [r].[C],
	[r].[A] MOD -5 BAND [r].[C],
	[r].[A] BAND -5 BAND [r].[C],
	([r].[A] BOR -5) BAND [r].[C],
	([r].[A] BXOR -5) BAND [r].[C]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[r].[A] BAND -5,
	-5 BAND [r].[C],
	[r].[A] + -5 BAND [r].[C],
	[r].[A] - -5 BAND [r].[C],
	[r].[A] * -5 BAND [r].[C],
	[r].[A] / -5 BAND [r].[C],
	[r].[A] MOD -5 BAND [r].[C],
	[r].[A] BAND -5 BAND [r].[C],
	([r].[A] BOR -5) BAND [r].[C],
	([r].[A] BXOR -5) BAND [r].[C]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- cell And/And(Add(a,b),c): green
-- cell And/And(a,Add(b,c)): green
-- cell And/And(AsNotNull(Add(a,b)),c): green
-- cell And/And(a,AsNotNull(Add(b,c))): green
-- cell And/And(Sub(a,b),c): green
-- cell And/And(a,Sub(b,c)): green
-- cell And/And(AsNotNull(Sub(a,b)),c): green
-- cell And/And(a,AsNotNull(Sub(b,c))): green
-- cell And/And(Mul(a,b),c): green
-- cell And/And(a,Mul(b,c)): green
-- cell And/And(AsNotNull(Mul(a,b)),c): green
-- cell And/And(a,AsNotNull(Mul(b,c))): green
-- cell And/And(Div(a,b),c): skipped
-- cell And/And(a,Div(b,c)): red
-- cell And/And(AsNotNull(Div(a,b)),c): skipped
-- cell And/And(a,AsNotNull(Div(b,c))): red
-- cell And/And(Mod(a,b),c): skipped
-- cell And/And(a,Mod(b,c)): green
-- cell And/And(AsNotNull(Mod(a,b)),c): skipped
-- cell And/And(a,AsNotNull(Mod(b,c))): green
-- cell And/And(And(a,b),c): skipped
-- cell And/And(a,And(b,c)): skipped
-- cell And/And(AsNotNull(And(a,b)),c): skipped
-- cell And/And(a,AsNotNull(And(b,c))): skipped
-- cell And/And(Or(a,b),c): green
-- cell And/And(a,Or(b,c)): green
-- cell And/And(AsNotNull(Or(a,b)),c): green
-- cell And/And(a,AsNotNull(Or(b,c))): green
-- cell And/And(Xor(a,b),c): green
-- cell And/And(a,Xor(b,c)): green
-- cell And/And(AsNotNull(Xor(a,b)),c): green
-- cell And/And(a,AsNotNull(Xor(b,c))): green
-- cell And/And(a,Neg(b)): green
-- cell And/And(Neg(b),c): green
-- cell And/And(Add(a,Neg(b)),c): green
-- cell And/And(Sub(a,Neg(b)),c): green
-- cell And/And(Mul(a,Neg(b)),c): green
-- cell And/And(Div(a,Neg(b)),c): skipped
-- cell And/And(Mod(a,Neg(b)),c): skipped
-- cell And/And(And(a,Neg(b)),c): green
-- cell And/And(Or(a,Neg(b)),c): green
-- cell And/And(Xor(a,Neg(b)),c): green
-- cell And/And(a,Not(b)): green
-- cell And/And(Not(b),c): green
-- cell And/And(Add(a,Not(b)),c): green
-- cell And/And(Sub(a,Not(b)),c): green
-- cell And/And(Mul(a,Not(b)),c): green
-- cell And/And(Div(a,Not(b)),c): red
-- cell And/And(Mod(a,Not(b)),c): green
-- cell And/And(And(a,Not(b)),c): green
-- cell And/And(Or(a,Not(b)),c): green
-- cell And/And(Xor(a,Not(b)),c): green
-- cell And/And(a,NegLit(b)): green
-- cell And/And(NegLit(b),c): green
-- cell And/And(Add(a,NegLit(b)),c): green
-- cell And/And(Sub(a,NegLit(b)),c): green
-- cell And/And(Mul(a,NegLit(b)),c): green
-- cell And/And(Div(a,NegLit(b)),c): green
-- cell And/And(Mod(a,NegLit(b)),c): green
-- cell And/And(And(a,NegLit(b)),c): green
-- cell And/And(Or(a,NegLit(b)),c): green
-- cell And/And(Xor(a,NegLit(b)),c): green
-- cell And/And(a,NegParam(b)): green
-- cell And/And(NegParam(b),c): green
-- cell And/And(Add(a,NegParam(b)),c): green
-- cell And/And(Sub(a,NegParam(b)),c): green
-- cell And/And(Mul(a,NegParam(b)),c): green
-- cell And/And(Div(a,NegParam(b)),c): green
-- cell And/And(Mod(a,NegParam(b)),c): green
-- cell And/And(And(a,NegParam(b)),c): green
-- cell And/And(Or(a,NegParam(b)),c): green
-- cell And/And(Xor(a,NegParam(b)),c): green
