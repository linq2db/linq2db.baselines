-- SqlCe
SELECT
	CAST([r].[A] AS Decimal(18, 10)) * -5.5
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[A],
	[t1].[B],
	[t1].[C],
	[t1].[N],
	[t1].[S]
FROM
	[PrecedenceRow] [t1]

-- SqlCe
SELECT
	(-(-5.5)) * [r].[B]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[A],
	[t1].[B],
	[t1].[C],
	[t1].[N],
	[t1].[S]
FROM
	[PrecedenceRow] [t1]

-- SqlCe
SELECT
	CAST([r].[A] AS Float) * -5.5
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[A],
	[t1].[B],
	[t1].[C],
	[t1].[N],
	[t1].[S]
FROM
	[PrecedenceRow] [t1]

-- SqlCe
SELECT
	CAST([r].[A] AS Float) * 9.9999999999999995E-08
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[A],
	[t1].[B],
	[t1].[C],
	[t1].[N],
	[t1].[S]
FROM
	[PrecedenceRow] [t1]

