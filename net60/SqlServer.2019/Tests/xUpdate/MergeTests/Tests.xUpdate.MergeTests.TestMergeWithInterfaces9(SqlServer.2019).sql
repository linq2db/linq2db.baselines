﻿BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [ReviewIndexes]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[ReviewIndexes]', N'U') IS NULL)
	CREATE TABLE [ReviewIndexes]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ReviewIndexes] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019

MERGE INTO [ReviewIndexes] [Target]
USING
(VALUES
	(1,N'2')
) [Source]
(
	[Id],
	[Value_1]
)
ON ([Target].[Id] = [Source].[Id])

WHEN MATCHED AND [Target].[Id] <> [Source].[Id] THEN
UPDATE
SET
	[Target].[Value] = [Source].[Value_1]
;

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [ReviewIndexes]

