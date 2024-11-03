﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Car') IS NOT NULL)
	DROP TABLE [Car]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Car') IS NULL)
	EXECUTE('
		CREATE TABLE [Car]
		(
			[Id]   Int          NOT NULL,
			[Name] NVarChar(50)     NULL,

			CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Car]
(
	[Id],
	[Name]
)
SELECT 1,'Special' UNION ALL
SELECT 2,'NoSpecial'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] <> 'Special' OR [x].[Name] IS NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] = 'Special'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] <> 'Special' OR [x].[Name] IS NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] = 'Special'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Car') IS NOT NULL)
	DROP TABLE [Car]

