﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SampleClass') IS NOT NULL)
	DROP TABLE [SampleClass]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SampleClass') IS NULL)
	EXECUTE('
		CREATE TABLE [SampleClass]
		(
			[Id]        Int NOT NULL,
			[NullValue] Int     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @default Integer -- Int32
SET     @default = 0

SELECT
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND Coalesce([a].[NullValue], @default) = 0 OR [a].[Id] = 1 AND Coalesce([a].[NullValue], @default) = 1 OR [a].[Id] = 2 AND Coalesce([a].[NullValue], @default) = 2)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SampleClass') IS NOT NULL)
	DROP TABLE [SampleClass]

