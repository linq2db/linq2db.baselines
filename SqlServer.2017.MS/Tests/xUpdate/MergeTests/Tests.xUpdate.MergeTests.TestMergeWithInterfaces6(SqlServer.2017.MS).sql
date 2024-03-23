BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [ReviewIndexes]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[ReviewIndexes]', N'U') IS NULL)
	CREATE TABLE [ReviewIndexes]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ReviewIndexes] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1,N'2')
) [Source]
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
;

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [ReviewIndexes]

