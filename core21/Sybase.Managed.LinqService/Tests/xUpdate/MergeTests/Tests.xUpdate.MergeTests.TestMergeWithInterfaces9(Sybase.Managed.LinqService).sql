BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [ReviewIndexes]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_ReviewIndexes] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [ReviewIndexes] [Target]
USING (	SELECT 1, '2') [Source]
(
	[Id],
	[Value_1]
)
ON ([Target].[Id] = [Source].[Id])

WHEN MATCHED AND [Target].[Id] <> [Source].[Id] THEN
UPDATE
SET
	[Target].[Value] = [Source].[Value_1]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [ReviewIndexes]

