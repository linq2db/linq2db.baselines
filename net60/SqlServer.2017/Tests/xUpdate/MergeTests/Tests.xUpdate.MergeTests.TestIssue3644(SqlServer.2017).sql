BeforeExecute
-- SqlServer.2017

CREATE TABLE [tempdb]..[#Issue3644Table]
(
	[Id]   UniqueIdentifier NOT NULL,
	[Date] DateTime2(0)         NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2017

MERGE INTO [tempdb]..[#Issue3644Table] [Target]
USING (VALUES
	('9c04cc31-c794-470a-bdb7-4f58ea08b5e2',DATETIME2FROMPARTS(2022, 7, 3, 11, 26, 24, 0, 0))
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
-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#Issue3644Table]

