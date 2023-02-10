﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TPHTable') IS NOT NULL)
	DROP TABLE [TPHTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TPHTable') IS NULL)
	EXECUTE('
		CREATE TABLE [TPHTable]
		(
			[Id]            Int          NOT NULL,
			[Discriminator] Int          NOT NULL,
			[Value1]        NVarChar(50)     NULL,
			[Value2]        NVarChar(50)     NULL,
			[Value3]        NVarChar(50)     NULL,
			[NullableBool]  VarChar(1)       NULL,

			CONSTRAINT [PK_TPHTable] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TPHTable]
(
	[Id],
	[Discriminator],
	[Value1],
	[Value2],
	[Value3],
	[NullableBool]
)
SELECT 1,1,'Str1',NULL,NULL,NULL UNION ALL
SELECT 2,2,NULL,'Str2',NULL,NULL UNION ALL
SELECT 3,3,NULL,NULL,'Str3','Y'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Discriminator],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3],
	[t1].[NullableBool]
FROM
	[TPHTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3],
	[x].[NullableBool]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 1

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3],
	[x].[NullableBool]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 2

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3],
	[x].[NullableBool]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 3

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3],
	[x].[NullableBool]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value1] = 'Str1'

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3],
	[x].[NullableBool]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value2] = 'Str2'

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3],
	[x].[NullableBool]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value3] = 'Str3'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TPHTable') IS NOT NULL)
	DROP TABLE [TPHTable]

