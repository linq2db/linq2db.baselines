BeforeExecute
-- SqlServer.2012

CREATE TABLE [ReviewIndexes]
(
	[Id]    Int            NOT NULL,
	[Value] NVarChar(4000)     NULL,

	CONSTRAINT [PK_ReviewIndexes] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2012

MERGE INTO [ReviewIndexes] [Target]
USING (	VALUES
		(1, N'2')) [Source]
(
	[Id], 
	[Value_1]
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
	[Source].[Id],
	[Source].[Value_1]
)
;

BeforeExecute
-- SqlServer.2012

DROP TABLE [ReviewIndexes]

