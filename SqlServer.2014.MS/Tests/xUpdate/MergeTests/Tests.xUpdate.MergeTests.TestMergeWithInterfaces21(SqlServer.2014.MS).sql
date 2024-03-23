BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[ReviewIndexes]', N'U') IS NOT NULL)
	DROP TABLE [ReviewIndexes]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[ReviewIndexes]', N'U') IS NULL)
	CREATE TABLE [ReviewIndexes]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ReviewIndexes] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[source_Id]
)
ON ([Target].[Id] = [Source].[source_Id])
WHEN NOT MATCHED BY SOURCE AND [Target].[Id] = 3 THEN DELETE
;

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[ReviewIndexes]', N'U') IS NOT NULL)
	DROP TABLE [ReviewIndexes]

