BeforeExecute
-- SqlServer.2022

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (N'THREE', N'FOUR')

BeforeExecute
-- SqlServer.2022

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] IN (N'THREE') OR [s].[Enum] IS NULL)

BeforeExecute
-- SqlServer.2022

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (N'THREE', N'TWO')

BeforeExecute
-- SqlServer.2022

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] NOT IN (N'TWO') AND [s].[Enum] IS NOT NULL)

BeforeExecute
-- SqlServer.2022

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] NOT IN (N'THREE', N'TWO') OR [s].[Enum] IS NULL)

