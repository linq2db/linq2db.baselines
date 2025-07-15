BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (N'THREE', N'FOUR')

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] IN (N'THREE') OR [s].[Enum] IS NULL)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (N'THREE', N'TWO')

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] NOT IN (N'TWO') AND [s].[Enum] IS NOT NULL)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] NOT IN (N'THREE', N'TWO') OR [s].[Enum] IS NULL)

