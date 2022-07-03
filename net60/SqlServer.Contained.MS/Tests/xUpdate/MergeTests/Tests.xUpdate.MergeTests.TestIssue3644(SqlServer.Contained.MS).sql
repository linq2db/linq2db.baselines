BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#Issue3644Table]
(
	[Id]   UniqueIdentifier NOT NULL,
	[Date] DateTime2(0)         NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

MERGE INTO [tempdb]..[#Issue3644Table] [Target]
USING (VALUES
	('0de17660-f5a6-43dc-a943-07d733467de3',DATETIME2FROMPARTS(2022, 7, 3, 11, 39, 1, 0, 0))
) [Source]
(
	[Id],
	[Date_1]
)
ON ([Target].[Id] = [Source].[Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Date]
)
VALUES
(
	[Source].[Id],
	[Source].[Date_1]
)

WHEN MATCHED THEN
UPDATE
SET
	[Target].[Date] = [Source].[Date_1]
;

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#Issue3644Table]

