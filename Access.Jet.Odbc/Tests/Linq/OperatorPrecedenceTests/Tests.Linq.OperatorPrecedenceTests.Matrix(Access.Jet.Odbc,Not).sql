-- Access.Jet.Odbc AccessODBC
SELECT
	-1 - ([r].[A] + [r].[B]),
	-1 - ([r].[A] + [r].[B]),
	-1 - ([r].[A] - [r].[B]),
	-1 - ([r].[A] - [r].[B]),
	-1 - [r].[A] * [r].[B],
	-1 - [r].[A] * [r].[B],
	-1 - Fix([r].[A] / [r].[B]),
	-1 - Fix([r].[A] / [r].[B]),
	-1 - ([r].[A] BAND [r].[B]),
	-1 - ([r].[A] BAND [r].[B]),
	-1 - ([r].[A] BOR [r].[B]),
	-1 - ([r].[A] BOR [r].[B]),
	-1 + [r].[B],
	-1 - (-1 - [r].[B]),
	4,
	-1 - -5 * [r].[B]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- Access.Jet.Odbc AccessODBC
SELECT
	4
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- cell Not/Not(Add(a,b)): green
-- cell Not/Not(AsNotNull(Add(a,b))): green
-- cell Not/Not(Sub(a,b)): green
-- cell Not/Not(AsNotNull(Sub(a,b))): green
-- cell Not/Not(Mul(a,b)): green
-- cell Not/Not(AsNotNull(Mul(a,b))): green
-- cell Not/Not(Div(a,b)): green
-- cell Not/Not(AsNotNull(Div(a,b))): green
-- cell Not/Not(Mod(a,b)): skipped
-- cell Not/Not(AsNotNull(Mod(a,b))): skipped
-- cell Not/Not(And(a,b)): green
-- cell Not/Not(AsNotNull(And(a,b))): green
-- cell Not/Not(Or(a,b)): green
-- cell Not/Not(AsNotNull(Or(a,b))): green
-- cell Not/Not(Xor(a,b)): skipped
-- cell Not/Not(AsNotNull(Xor(a,b))): skipped
-- cell Not/Not(Neg(b)): green
-- cell Not/Not(Not(b)): green
-- cell Not/Not(NegLit(b)): green
-- cell Not/Not(NegParam(b)): green
-- cell Not/Not(Mul(NegLit,b)): green
