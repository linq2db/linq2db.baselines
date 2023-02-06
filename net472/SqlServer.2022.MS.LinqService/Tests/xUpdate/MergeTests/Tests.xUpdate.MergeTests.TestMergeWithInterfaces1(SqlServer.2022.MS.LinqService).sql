﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [ReviewIndexes]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[ReviewIndexes]', N'U') IS NULL)
	CREATE TABLE [ReviewIndexes]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ReviewIndexes] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1,N'2')
) [Source]
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
;

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [ReviewIndexes]

