BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [ReviewIndexes]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[ReviewIndexes]', N'U') IS NULL)
	CREATE TABLE [ReviewIndexes]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ReviewIndexes] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[source_Id]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN MATCHED THEN
UPDATE
SET
	[Id] = 2,
	[Value] = N'3'
;

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [ReviewIndexes]

