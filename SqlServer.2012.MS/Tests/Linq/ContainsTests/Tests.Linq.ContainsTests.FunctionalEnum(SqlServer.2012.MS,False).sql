BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (N'THREE', N'FOUR')

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (N'THREE', NULL)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (N'THREE', N'TWO')

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (NULL, N'TWO')

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (N'THREE', N'TWO')

