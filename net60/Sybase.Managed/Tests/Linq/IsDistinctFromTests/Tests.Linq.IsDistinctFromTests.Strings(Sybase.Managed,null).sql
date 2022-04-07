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
			[Int]            Int           NOT NULL,
			[NullableInt]    Int               NULL,
			[String]         NVarChar(255)     NULL,
			[NullableString] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
SELECT 2,2,'abc','abc' UNION ALL
SELECT 3,NULL,'def',NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NOT NULL)
	DROP TABLE [Src]

