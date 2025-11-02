-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (N'THREE', N'FOUR')

-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (N'THREE', NULL)

-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (N'THREE', N'TWO')

-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (NULL, N'TWO')

-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (N'THREE', N'TWO')

