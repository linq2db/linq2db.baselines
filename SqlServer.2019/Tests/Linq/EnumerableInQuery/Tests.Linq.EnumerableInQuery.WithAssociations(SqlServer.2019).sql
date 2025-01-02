BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [SomeItem]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[SomeItem]', N'U') IS NULL)
	CREATE TABLE [SomeItem]
	(
		[Id]      Int NOT NULL,
		[ColorId] Int     NULL,
		[StyleId] Int     NULL
	)

BeforeExecute
-- SqlServer.2019

INSERT INTO [SomeItem]
(
	[Id],
	[ColorId],
	[StyleId]
)
VALUES
(1,1,1),
(2,2,2),
(3,3,3),
(4,1,2),
(5,2,3),
(6,NULL,1),
(7,3,NULL),
(8,NULL,NULL)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [SomeColor]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[SomeColor]', N'U') IS NULL)
	CREATE TABLE [SomeColor]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2019

INSERT INTO [SomeColor]
(
	[Id],
	[Name]
)
VALUES
(1,N'Red'),
(2,N'Green'),
(3,N'Blue')

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [SomeStyle]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[SomeStyle]', N'U') IS NULL)
	CREATE TABLE [SomeStyle]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2019

INSERT INTO [SomeStyle]
(
	[Id],
	[Name]
)
VALUES
(1,N'Bold'),
(2,N'Italic'),
(3,N'Underline')

BeforeExecute
-- SqlServer.2019

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
				(VALUES
					([a_Color].[Name],[a_Style].[Name]),
					(NULL,[a_Style].[Name])
				) [it]([ColorName], [StyleName])
		) [it_1]
WHERE
	[it_1].[ColorName] = N'Red'

BeforeExecute
-- SqlServer.2019

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
-- SqlServer.2019

DROP TABLE IF EXISTS [SomeStyle]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [SomeColor]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [SomeItem]

