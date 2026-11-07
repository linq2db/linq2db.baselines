-- SQLite.MS SQLite
DECLARE @operand  -- Int32
SET     @operand = 2

SELECT
	SUM([g_1].[Cents]) * @operand
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]
LIMIT 2

-- SQLite.MS SQLite
DECLARE @operand  -- Int32
SET     @operand = 2

SELECT
	@operand * SUM([g_1].[Cents])
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]
LIMIT 2

-- SQLite.MS SQLite
DECLARE @operand  -- Int32
SET     @operand = 2

SELECT
	SUM([g_1].[Cents]) / @operand
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]
LIMIT 2

-- SQLite.MS SQLite
DECLARE @operand  -- Int32
SET     @operand = 200

SELECT
	SUM([g_1].[Cents]) % @operand
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]
LIMIT 2

-- SQLite.MS SQLite
DECLARE @operand  -- Int32
SET     @operand = 200

SELECT
	SUM([g_1].[Cents]) + @operand
FROM
	[ConvertedAmount] [g_1]
GROUP BY
	[g_1].[Group]
LIMIT 2

-- SQLite.MS SQLite
DECLARE @operand  -- Int32
SET     @operand = 2

SELECT
	[x].[Cents] * @operand
FROM
	[ConvertedAmount] [x]
WHERE
	[x].[Id] = 1
LIMIT 2

-- SQLite.MS SQLite
DECLARE @operand  -- Int32
SET     @operand = 200

SELECT
	[x].[Cents] % @operand
FROM
	[ConvertedAmount] [x]
WHERE
	[x].[Id] = 1
LIMIT 2

-- SQLite.MS SQLite
DECLARE @operand  -- Int32
SET     @operand = 200

SELECT
	[x].[Cents] + @operand
FROM
	[ConvertedAmount] [x]
WHERE
	[x].[Id] = 1
LIMIT 2

-- SQLite.MS SQLite
DECLARE @operand  -- Int32
SET     @operand = 200

SELECT
	[x].[Cents] - @operand
FROM
	[ConvertedAmount] [x]
WHERE
	[x].[Id] = 1
LIMIT 2

