-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] > @p
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Value VarChar(3, 0) -- AnsiString
SET     @Value = -900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] >= -@Value
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Value VarChar(3, 0) -- AnsiString
SET     @Value = -900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] < -@Value
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] <= @p
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Value VarChar(3, 0) -- AnsiString
SET     @Value = -900
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] >= -@Value AND [r].[Grace] <= @p
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 9000000000

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] * 10000000 <> @Ticks OR [r].[Grace] IS NULL
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 899

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] > @p
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Value VarChar(3, 0) -- AnsiString
SET     @Value = -900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] >= -@Value
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Value VarChar(3, 0) -- AnsiString
SET     @Value = -900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] < -@Value
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 899

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] <= @p
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Value VarChar(3, 0) -- AnsiString
SET     @Value = -900
DECLARE @p BigInt -- Int64
SET     @p = 899

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] >= -@Value AND [r].[Grace] <= @p
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 8995000000

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] * 10000000 <> @Ticks OR [r].[Grace] IS NULL
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] > @p
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] >= @p
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] < @p
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] <= @p
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 900
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] = @p AND [r].[Grace] = @p_1
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 9000000000

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] * 10000000 <> @p OR [r].[Grace] IS NULL
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] IS NULL
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] IS NOT NULL
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] > @p
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 901

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] >= @p
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 901

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] < @p
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] <= @p
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 901
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 900

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] = @p AND [r].[Grace] = @p_1
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p BigInt -- Int64
SET     @p = 9005000000

SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] * 10000000 <> @p OR [r].[Grace] IS NULL
ORDER BY
	[r].[Id]

