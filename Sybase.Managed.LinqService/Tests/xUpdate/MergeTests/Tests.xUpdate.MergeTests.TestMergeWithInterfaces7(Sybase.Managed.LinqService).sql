BeforeExecute
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
	SELECT 1 AS [source_Id]) [Source]
(
	[source_Id]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Value]
)
VALUES
(
	2,
	'3'
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ReviewIndexes') IS NOT NULL)
	DROP TABLE [ReviewIndexes]

