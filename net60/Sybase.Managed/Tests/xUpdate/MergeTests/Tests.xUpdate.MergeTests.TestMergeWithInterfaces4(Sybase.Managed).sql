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
	SELECT 1 AS [Id], '2' AS [Value_1]) [Source]
(
	[Id],
	[Value_1]
)
ON ([Target].[Id] = [Source].[Id])

WHEN MATCHED THEN
UPDATE
SET
	[Target].[Value] = [Source].[Value_1]

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Value]
)
VALUES
(
	[Source].[Id],
	[Source].[Value_1]
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ReviewIndexes') IS NOT NULL)
	DROP TABLE [ReviewIndexes]

