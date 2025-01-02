BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SomeItem]', N'U') IS NOT NULL)
	DROP TABLE [SomeItem]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SomeItem]', N'U') IS NULL)
	CREATE TABLE [SomeItem]
	(
		[Id]      Int NOT NULL,
		[ColorId] Int     NULL,
		[StyleId] Int     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [SomeItem]
(
	[Id],
	[ColorId],
	[StyleId]
)
SELECT 1,1,1 UNION ALL
SELECT 2,2,2 UNION ALL
SELECT 3,3,3 UNION ALL
SELECT 4,1,2 UNION ALL
SELECT 5,2,3 UNION ALL
SELECT 6,NULL,1 UNION ALL
SELECT 7,3,NULL UNION ALL
SELECT 8,NULL,NULL

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SomeColor]', N'U') IS NOT NULL)
	DROP TABLE [SomeColor]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SomeColor]', N'U') IS NULL)
	CREATE TABLE [SomeColor]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [SomeColor]
(
	[Id],
	[Name]
)
SELECT 1,N'Red' UNION ALL
SELECT 2,N'Green' UNION ALL
SELECT 3,N'Blue'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SomeStyle]', N'U') IS NOT NULL)
	DROP TABLE [SomeStyle]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SomeStyle]', N'U') IS NULL)
	CREATE TABLE [SomeStyle]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [SomeStyle]
(
	[Id],
	[Name]
)
SELECT 1,N'Bold' UNION ALL
SELECT 2,N'Italic' UNION ALL
SELECT 3,N'Underline'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[it_1].[cond],
	[it_1].[ColorName],
	[it_1].[StyleName]
FROM
	[SomeItem] [t1]
		LEFT JOIN [SomeColor] [a_Color] ON [t1].[ColorId] = [a_Color].[Id]
		LEFT JOIN [SomeStyle] [a_Style] ON [t1].[StyleId] = [a_Style].[Id]
		OUTER APPLY (
			SELECT
				[it].[ColorName],
				[it].[StyleName],
				1 as [cond]
			FROM
				(
					SELECT [a_Color].[Name] AS [ColorName], [a_Style].[Name] AS [StyleName]
					UNION ALL
					SELECT NULL, [a_Style].[Name]) [it]
		) [it_1]
WHERE
	[it_1].[ColorName] = N'Red'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[ColorId],
	[t1].[StyleId],
	[a_Color].[Id],
	[a_Color].[Name],
	[a_Style].[Id],
	[a_Style].[Name]
FROM
	[SomeItem] [t1]
		LEFT JOIN [SomeColor] [a_Color] ON [t1].[ColorId] = [a_Color].[Id]
		LEFT JOIN [SomeStyle] [a_Style] ON [t1].[StyleId] = [a_Style].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SomeStyle]', N'U') IS NOT NULL)
	DROP TABLE [SomeStyle]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SomeColor]', N'U') IS NOT NULL)
	DROP TABLE [SomeColor]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SomeItem]', N'U') IS NOT NULL)
	DROP TABLE [SomeItem]

