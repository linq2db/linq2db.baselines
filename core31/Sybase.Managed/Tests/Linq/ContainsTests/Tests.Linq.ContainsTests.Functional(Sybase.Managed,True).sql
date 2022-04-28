﻿BeforeExecute
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
	[s].[Int] IN (-1, -2)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1) OR [s].[Int] IS NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, 2)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (2) AND [s].[Int] IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] NOT IN (-1, 2) OR [s].[Int] IS NULL)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NOT NULL)
	DROP TABLE [Src]

