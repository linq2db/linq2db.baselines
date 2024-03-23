BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]    Int         NOT NULL,
		[Int]   Int             NULL,
		[Enum]  NVarChar(5)     NULL,
		[CEnum] VarChar(20)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
SELECT 1,NULL,NULL,NULL UNION ALL
SELECT 2,2,N'TWO','___Value2___'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (N'THREE', N'FOUR')

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] IN (N'THREE') OR [s].[Enum] IS NULL)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN (N'THREE', N'TWO')

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] NOT IN (N'TWO') AND [s].[Enum] IS NOT NULL)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] NOT IN (N'THREE', N'TWO') OR [s].[Enum] IS NULL)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

