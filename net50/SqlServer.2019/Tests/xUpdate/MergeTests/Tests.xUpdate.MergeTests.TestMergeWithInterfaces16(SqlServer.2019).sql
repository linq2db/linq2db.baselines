﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [ReviewIndexes]
(
	[Id]    Int            NOT NULL,
	[Value] NVarChar(4000)     NULL,

	CONSTRAINT [PK_ReviewIndexes] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

MERGE INTO [ReviewIndexes] [Target]
USING (	VALUES
		(1)) [Source]
(
	[Id]
)
ON ([Target].[Id] = [Source].[Id])
WHEN MATCHED THEN DELETE
;

BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[ReviewIndexes]', N'U') IS NOT NULL)
	DROP TABLE [ReviewIndexes]

