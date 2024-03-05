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
USING (
	SELECT
		[t1].[Id] as [source_Id],
		[t1].[Value] as [source_Value]
	FROM
		[ReviewIndexes] [t1]
) [Source]
(
	[source_Id],
	[source_Value]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN MATCHED THEN
UPDATE
SET
	[Value] = [Source].[source_Value]

WHEN NOT MATCHED THEN
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
-- SqlServer.2022

DROP TABLE IF EXISTS [ReviewIndexes]

