-- SQLite.MS SQLite
SELECT
	CASE
		WHEN [r].[A] + [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] + [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN [r].[B] + [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST([r].[A] + [r].[B] AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] <= [r].[C] AND [r].[B] < [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] - [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - [r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN [r].[B] - [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST([r].[A] - [r].[B] AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - [r].[B] <= [r].[C] AND [r].[B] < [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] * [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] * [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] * [r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN [r].[B] * [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] * [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST([r].[A] * [r].[B] AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] * [r].[B] <= [r].[C] AND [r].[B] < [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] / [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] / [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] / [r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN [r].[B] / [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] / [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST([r].[A] / [r].[B] AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] / [r].[B] <= [r].[C] AND [r].[B] < [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] % [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] % [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] % [r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN [r].[B] % [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] % [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST([r].[A] % [r].[B] AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] % [r].[B] <= [r].[C] AND [r].[B] < [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] & [r].[B]) = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < ([r].[A] & [r].[B]) THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] & [r].[B]) BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN ([r].[B] & [r].[C]) AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] & [r].[B]) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST([r].[A] & [r].[B] AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] & [r].[B]) <= [r].[C] AND [r].[B] < [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] | [r].[B]) = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < ([r].[A] | [r].[B]) THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] | [r].[B]) BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN ([r].[B] | [r].[C]) AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] | [r].[B]) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] | [r].[N]) IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST([r].[A] | [r].[B] AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] | [r].[B]) <= [r].[C] AND [r].[B] < [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] + [r].[B]) - ([r].[A] & [r].[B]) * 2 = [r].[C]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < ([r].[A] + [r].[B]) - ([r].[A] & [r].[B]) * 2
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] + [r].[B]) - ([r].[A] & [r].[B]) * 2 BETWEEN [r].[C] AND [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN ([r].[B] + [r].[C]) - ([r].[B] & [r].[C]) * 2 AND [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] + [r].[B]) - ([r].[A] & [r].[B]) * 2 IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST(([r].[A] + [r].[B]) - ([r].[A] & [r].[B]) * 2 AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] + [r].[B]) - ([r].[A] & [r].[B]) * 2 <= [r].[C] AND [r].[B] < [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN -[r].[A] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] = -[r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN (~[r].[A]) = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] = (~[r].[A]) THEN 1
		ELSE 0
	END,
	CASE
		WHEN -5 = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] = -5 THEN 1
		ELSE 0
	END
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	CASE
		WHEN -5 = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] = -5 THEN 1
		ELSE 0
	END
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- cell Predicate/Eq(Add(a,b),c): green
-- cell Predicate/Lt(c,Add(a,b)): green
-- cell Predicate/Between(Add(a,b),c,a): green
-- cell Predicate/Between(a,Add(b,c),a): green
-- cell Predicate/In(Add(a,b)): green
-- cell Predicate/IsNull(Add(a,n)): green
-- cell Predicate/Like(Concat(s,Add(a,b))): green
-- cell Predicate/NotAnd(Add(a,b)): green
-- cell Predicate/Eq(Sub(a,b),c): green
-- cell Predicate/Lt(c,Sub(a,b)): green
-- cell Predicate/Between(Sub(a,b),c,a): green
-- cell Predicate/Between(a,Sub(b,c),a): green
-- cell Predicate/In(Sub(a,b)): green
-- cell Predicate/IsNull(Sub(a,n)): green
-- cell Predicate/Like(Concat(s,Sub(a,b))): green
-- cell Predicate/NotAnd(Sub(a,b)): green
-- cell Predicate/Eq(Mul(a,b),c): green
-- cell Predicate/Lt(c,Mul(a,b)): green
-- cell Predicate/Between(Mul(a,b),c,a): green
-- cell Predicate/Between(a,Mul(b,c),a): green
-- cell Predicate/In(Mul(a,b)): green
-- cell Predicate/IsNull(Mul(a,n)): green
-- cell Predicate/Like(Concat(s,Mul(a,b))): green
-- cell Predicate/NotAnd(Mul(a,b)): green
-- cell Predicate/Eq(Div(a,b),c): green
-- cell Predicate/Lt(c,Div(a,b)): green
-- cell Predicate/Between(Div(a,b),c,a): green
-- cell Predicate/Between(a,Div(b,c),a): green
-- cell Predicate/In(Div(a,b)): green
-- cell Predicate/IsNull(Div(a,n)): green
-- cell Predicate/Like(Concat(s,Div(a,b))): green
-- cell Predicate/NotAnd(Div(a,b)): green
-- cell Predicate/Eq(Mod(a,b),c): green
-- cell Predicate/Lt(c,Mod(a,b)): green
-- cell Predicate/Between(Mod(a,b),c,a): green
-- cell Predicate/Between(a,Mod(b,c),a): green
-- cell Predicate/In(Mod(a,b)): green
-- cell Predicate/IsNull(Mod(a,n)): green
-- cell Predicate/Like(Concat(s,Mod(a,b))): green
-- cell Predicate/NotAnd(Mod(a,b)): green
-- cell Predicate/Eq(And(a,b),c): green
-- cell Predicate/Lt(c,And(a,b)): green
-- cell Predicate/Between(And(a,b),c,a): green
-- cell Predicate/Between(a,And(b,c),a): green
-- cell Predicate/In(And(a,b)): green
-- cell Predicate/IsNull(And(a,n)): green
-- cell Predicate/Like(Concat(s,And(a,b))): green
-- cell Predicate/NotAnd(And(a,b)): green
-- cell Predicate/Eq(Or(a,b),c): green
-- cell Predicate/Lt(c,Or(a,b)): green
-- cell Predicate/Between(Or(a,b),c,a): green
-- cell Predicate/Between(a,Or(b,c),a): green
-- cell Predicate/In(Or(a,b)): green
-- cell Predicate/IsNull(Or(a,n)): green
-- cell Predicate/Like(Concat(s,Or(a,b))): green
-- cell Predicate/NotAnd(Or(a,b)): green
-- cell Predicate/Eq(Xor(a,b),c): green
-- cell Predicate/Lt(c,Xor(a,b)): green
-- cell Predicate/Between(Xor(a,b),c,a): green
-- cell Predicate/Between(a,Xor(b,c),a): green
-- cell Predicate/In(Xor(a,b)): green
-- cell Predicate/IsNull(Xor(a,n)): green
-- cell Predicate/Like(Concat(s,Xor(a,b))): green
-- cell Predicate/NotAnd(Xor(a,b)): green
-- cell Predicate/Eq(Neg(a),c): green
-- cell Predicate/Eq(c,Neg(a)): green
-- cell Predicate/Eq(Not(a),c): green
-- cell Predicate/Eq(c,Not(a)): green
-- cell Predicate/Eq(NegLit(a),c): green
-- cell Predicate/Eq(c,NegLit(a)): green
-- cell Predicate/Eq(NegParam(a),c): green
-- cell Predicate/Eq(c,NegParam(a)): green
