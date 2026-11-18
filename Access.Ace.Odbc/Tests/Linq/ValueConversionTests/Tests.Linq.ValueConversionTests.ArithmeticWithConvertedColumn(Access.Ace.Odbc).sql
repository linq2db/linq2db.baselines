-- Access.Ace.Odbc AccessODBC
DECLARE @operand Int -- Int32
SET     @operand = 2

SELECT TOP 2
	SUM([g_1].[Cents]) * ?
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]

-- Access.Ace.Odbc AccessODBC
DECLARE @operand Int -- Int32
SET     @operand = 2

SELECT TOP 2
	? * SUM([g_1].[Cents])
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]

-- Access.Ace.Odbc AccessODBC
DECLARE @operand Int -- Int32
SET     @operand = 2

SELECT TOP 2
	SUM([g_1].[Cents]) / ?
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]

-- Access.Ace.Odbc AccessODBC
DECLARE @operand Int -- Int32
SET     @operand = 200

SELECT TOP 2
	SUM([g_1].[Cents]) MOD ?
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]

-- Access.Ace.Odbc AccessODBC
DECLARE @operand Int -- Int32
SET     @operand = 200

SELECT TOP 2
	SUM([g_1].[Cents]) + ?
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]

-- Access.Ace.Odbc AccessODBC
DECLARE @operand Int -- Int32
SET     @operand = 2

SELECT TOP 2
	[x].[Cents] * ?
FROM
	[ConvertedAmount] [x]
WHERE
	[x].[Id] = 1

-- Access.Ace.Odbc AccessODBC
DECLARE @operand Int -- Int32
SET     @operand = 200

SELECT TOP 2
	[x].[Cents] MOD ?
FROM
	[ConvertedAmount] [x]
WHERE
	[x].[Id] = 1

-- Access.Ace.Odbc AccessODBC
DECLARE @operand Int -- Int32
SET     @operand = 200

SELECT TOP 2
	[x].[Cents] + ?
FROM
	[ConvertedAmount] [x]
WHERE
	[x].[Id] = 1

-- Access.Ace.Odbc AccessODBC
DECLARE @operand Int -- Int32
SET     @operand = 200

SELECT TOP 2
	[x].[Cents] - ?
FROM
	[ConvertedAmount] [x]
WHERE
	[x].[Id] = 1

