-- Access.Ace.OleDb AccessOleDb
SELECT
	CStr([r].[A] + [r].[B]),
	CStr([r].[A] - [r].[B]),
	CStr([r].[A] * [r].[B]),
	CStr([r].[A] / [r].[B]),
	CStr([r].[A] MOD [r].[B]),
	CStr([r].[A] BAND [r].[B]),
	CStr([r].[A] BOR [r].[B]),
	CStr([r].[A] BXOR [r].[B]),
	CStr(-[r].[A]),
	CStr(-1 - [r].[A])
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- cell ToString/ToString(Add(a,b)): green
-- cell ToString/ToString(Sub(a,b)): green
-- cell ToString/ToString(Mul(a,b)): green
-- cell ToString/ToString(Div(a,b)): red
-- cell ToString/ToString(Mod(a,b)): green
-- cell ToString/ToString(And(a,b)): green
-- cell ToString/ToString(Or(a,b)): green
-- cell ToString/ToString(Xor(a,b)): green
-- cell ToString/ToString(Neg(a)): green
-- cell ToString/ToString(Not(a)): green
