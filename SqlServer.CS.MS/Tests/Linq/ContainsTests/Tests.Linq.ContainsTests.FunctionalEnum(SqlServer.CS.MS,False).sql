-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (N'THREE', N'FOUR')

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (N'THREE', NULL)

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (N'THREE', N'TWO')

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (NULL, N'TWO')

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (N'THREE', N'TWO')

