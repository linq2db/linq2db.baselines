-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @operand  -- Int32
SET     @operand = 2

SELECT TOP 2
	SUM([g_1].[Cents]) * @operand
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @operand  -- Int32
SET     @operand = 2

SELECT TOP 2
	@operand * SUM([g_1].[Cents])
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @operand  -- Int32
SET     @operand = 2

SELECT TOP 2
	SUM([g_1].[Cents]) / @operand
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @operand  -- Int32
SET     @operand = 200

SELECT TOP 2
	SUM([g_1].[Cents]) MOD @operand
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @operand  -- Int32
SET     @operand = 200

SELECT TOP 2
	SUM([g_1].[Cents]) + @operand
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @operand  -- Int32
SET     @operand = 2

SELECT TOP 2
	[x].[Cents] * @operand
FROM
	[ConvertedAmount] [x]
WHERE
	[x].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @operand  -- Int32
SET     @operand = 200

SELECT TOP 2
	[x].[Cents] MOD @operand
FROM
	[ConvertedAmount] [x]
WHERE
	[x].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @operand  -- Int32
SET     @operand = 200

SELECT TOP 2
	[x].[Cents] + @operand
FROM
	[ConvertedAmount] [x]
WHERE
	[x].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @operand  -- Int32
SET     @operand = 200

SELECT TOP 2
	[x].[Cents] - @operand
FROM
	[ConvertedAmount] [x]
WHERE
	[x].[Id] = 1

