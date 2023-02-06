﻿BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [ReviewIndexes]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[ReviewIndexes]', N'U') IS NULL)
	CREATE TABLE [ReviewIndexes]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ReviewIndexes] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[Id]
)
ON ([Target].[Id] = [Source].[Id])
WHEN NOT MATCHED BY SOURCE AND [Target].[Id] = 3 THEN DELETE
;

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [ReviewIndexes]

