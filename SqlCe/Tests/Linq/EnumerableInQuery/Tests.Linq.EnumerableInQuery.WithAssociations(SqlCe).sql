BeforeExecute
-- SqlCe

DROP TABLE [SomeItem]

BeforeExecute
-- SqlCe

CREATE TABLE [SomeItem]
(
	[Id]      Int NOT NULL,
	[ColorId] Int     NULL,
	[StyleId] Int     NULL
)

BeforeExecute
-- SqlCe

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
-- SqlCe

DROP TABLE [SomeColor]

BeforeExecute
-- SqlCe

CREATE TABLE [SomeColor]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [SomeColor]
(
	[Id],
	[Name]
)
SELECT 1,'Red' UNION ALL
SELECT 2,'Green' UNION ALL
SELECT 3,'Blue'

BeforeExecute
-- SqlCe

DROP TABLE [SomeStyle]

BeforeExecute
-- SqlCe

CREATE TABLE [SomeStyle]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [SomeStyle]
(
	[Id],
	[Name]
)
SELECT 1,'Bold' UNION ALL
SELECT 2,'Italic' UNION ALL
SELECT 3,'Underline'

BeforeExecute
-- SqlCe

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
					SELECT NULL AS [ColorName], [a_Style].[Name] AS [StyleName]) [it]
		) [it_1]
WHERE
	[it_1].[ColorName] = 'Red'

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[ColorId],
	[t1].[StyleId],
	[a_Color].[Id] as [cond],
	[a_Color].[Name],
	[a_Style].[Id] as [cond_1],
	[a_Style].[Name] as [Name_1]
FROM
	[SomeItem] [t1]
		LEFT JOIN [SomeColor] [a_Color] ON [t1].[ColorId] = [a_Color].[Id]
		LEFT JOIN [SomeStyle] [a_Style] ON [t1].[StyleId] = [a_Style].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [SomeStyle]

BeforeExecute
-- SqlCe

DROP TABLE [SomeColor]

BeforeExecute
-- SqlCe

DROP TABLE [SomeItem]

