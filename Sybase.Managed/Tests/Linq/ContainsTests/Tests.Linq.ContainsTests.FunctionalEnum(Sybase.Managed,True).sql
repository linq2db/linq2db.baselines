BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NULL)
	EXECUTE('
		CREATE TABLE [Src]
		(
			[Id]    Int         NOT NULL,
			[Int]   Int             NULL,
			[Enum]  NVarChar(5)     NULL,
			[CEnum] VarChar(20)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
SELECT 1,NULL,NULL,NULL UNION ALL
SELECT 2,2,'TWO','___Value2___'

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'FOUR')

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] IN ('THREE') OR [s].[Enum] IS NULL)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'TWO')

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] NOT IN ('TWO') AND [s].[Enum] IS NOT NULL)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] NOT IN ('THREE', 'TWO') OR [s].[Enum] IS NULL)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NOT NULL)
	DROP TABLE [Src]

