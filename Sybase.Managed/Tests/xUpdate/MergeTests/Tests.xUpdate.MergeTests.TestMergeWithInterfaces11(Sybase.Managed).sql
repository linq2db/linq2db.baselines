﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ReviewIndexes') IS NOT NULL)
	DROP TABLE [ReviewIndexes]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ReviewIndexes') IS NULL)
	EXECUTE('
		CREATE TABLE [ReviewIndexes]
		(
			[Id]    Int           NOT NULL,
			[Value] NVarChar(255)     NULL,

			CONSTRAINT [PK_ReviewIndexes] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [ReviewIndexes] [Target]
USING (
	SELECT 1 AS [Id]) [Source]
(
	[Id]
)
ON ([Target].[Id] = [Source].[Id])

WHEN MATCHED AND [Target].[Id] <> [Source].[Id] THEN
UPDATE
SET
	[Target].[Id] = 2,
	[Target].[Value] = '3'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ReviewIndexes') IS NOT NULL)
	DROP TABLE [ReviewIndexes]

