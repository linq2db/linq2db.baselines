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
USING (	SELECT 1) [Source]
(
	[Id]
)
ON ([Target].[Id] = [Source].[Id])

WHEN NOT MATCHED AND [Source].[Id] > 1 THEN
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

DROP TABLE [ReviewIndexes]

