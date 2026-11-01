-- SqlServer.2012
DECLARE @operand Int -- Int32
SET     @operand = 2

SELECT TOP (2)
	SUM([g_1].[Cents]) * @operand
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]

-- SqlServer.2012
DECLARE @operand Int -- Int32
SET     @operand = 2

SELECT TOP (2)
	SUM([g_1].[Cents]) / @operand
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]

-- SqlServer.2012
DECLARE @operand Int -- Int32
SET     @operand = 200

SELECT TOP (2)
	SUM([g_1].[Cents]) + @operand
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]

-- SqlServer.2012
DECLARE @operand Int -- Int32
SET     @operand = 2

SELECT TOP (2)
	[x].[Cents] * @operand
FROM
	[ConvertedAmount] [x]
WHERE
	[x].[Id] = 1

-- SqlServer.2012
DECLARE @operand Int -- Int32
SET     @operand = 200

SELECT TOP (2)
	[x].[Cents] + @operand
FROM
	[ConvertedAmount] [x]
WHERE
	[x].[Id] = 1

