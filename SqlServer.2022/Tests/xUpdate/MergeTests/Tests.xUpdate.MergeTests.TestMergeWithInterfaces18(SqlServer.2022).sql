BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [ReviewIndexes]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[ReviewIndexes]', N'U') IS NULL)
	CREATE TABLE [ReviewIndexes]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ReviewIndexes] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[source_Id]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN NOT MATCHED By Source THEN UPDATE
SET
	[Id] = 2,
	[Value] = N'3'
;

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [ReviewIndexes]

