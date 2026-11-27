-- SqlServer.2025.MS SqlServer.2025
DECLARE @elapsed BigInt -- Int64
SET     @elapsed = 42
DECLARE @maximum BigInt -- Int64
SET     @maximum = 10

SELECT
	[r].[Id]
FROM
	[BetweenConvertedRow] [r]
WHERE
	[r].[Id] <= 2 AND @elapsed NOT BETWEEN [r].[Elapsed] AND @maximum
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025
DECLARE @longer BigInt -- Int64
SET     @longer = 150
DECLARE @limit BigInt -- Int64
SET     @limit = 130

SELECT
	[r].[Id]
FROM
	[BetweenConvertedRow] [r]
WHERE
	@longer NOT BETWEEN [r].[Elapsed] AND @limit
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025
DECLARE @nullableValue NVarChar(5) -- String
SET     @nullableValue = N'00042'
DECLARE @High NVarChar(5) -- String
SET     @High = N'00005'

SELECT
	[r].[Id]
FROM
	[BetweenConvertedRow] [r]
WHERE
	@nullableValue BETWEEN @High AND [r].[High]
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025
DECLARE @none BigInt -- Int64
SET     @none = NULL
DECLARE @limit BigInt -- Int64
SET     @limit = 130

SELECT
	[r].[Id]
FROM
	[BetweenConvertedRow] [r]
WHERE
	@none BETWEEN [r].[Elapsed] AND @limit

-- SqlServer.2025.MS SqlServer.2025
DECLARE @none BigInt -- Int64
SET     @none = NULL
DECLARE @limit BigInt -- Int64
SET     @limit = 130

SELECT
	[r].[Id]
FROM
	[BetweenConvertedRow] [r]
WHERE
	@none NOT BETWEEN [r].[Elapsed] AND @limit

-- SqlServer.2025.MS SqlServer.2025
DECLARE @none BigInt -- Int64
SET     @none = NULL
DECLARE @limit BigInt -- Int64
SET     @limit = 130

SELECT
	[r].[Id]
FROM
	[BetweenConvertedRow] [r]
WHERE
	@none NOT BETWEEN [r].[Elapsed] AND @limit

-- SqlServer.2025.MS SqlServer.2025
DECLARE @elapsed BigInt -- Int64
SET     @elapsed = 42
DECLARE @minimum BigInt -- Int64
SET     @minimum = 10

SELECT
	[r].[Id]
FROM
	[BetweenConvertedRow] [r]
WHERE
	@elapsed BETWEEN @minimum AND [r].[Elapsed]
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025
DECLARE @value NVarChar(5) -- String
SET     @value = N'00042'
DECLARE @Low NVarChar(5) -- String
SET     @Low = N'00500'

SELECT
	[r].[Id]
FROM
	[BetweenConvertedRow] [r]
WHERE
	@value BETWEEN [r].[Low] AND @Low
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025
DECLARE @value NVarChar(5) -- String
SET     @value = N'00042'
DECLARE @High NVarChar(5) -- String
SET     @High = N'00005'

SELECT
	[r].[Id]
FROM
	[BetweenConvertedRow] [r]
WHERE
	@value BETWEEN @High AND [r].[High]
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025
DECLARE @value NVarChar(5) -- String
SET     @value = N'00042'
DECLARE @High NVarChar(5) -- String
SET     @High = N'00005'

SELECT
	[r].[Id]
FROM
	[BetweenConvertedRow] [r]
WHERE
	@value NOT BETWEEN @High AND [r].[High]
ORDER BY
	[r].[Id]

