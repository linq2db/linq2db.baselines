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
	SELECT 1 AS [source_Id], '2' AS [source_Value]) [Source]
(
	[source_Id],
	[source_Value]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN NOT MATCHED AND [Source].[source_Id] > 1 THEN
INSERT
(
	[Id],
	[Value]
)
VALUES
(
	[Source].[source_Id],
	[Source].[source_Value]
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ReviewIndexes') IS NOT NULL)
	DROP TABLE [ReviewIndexes]

