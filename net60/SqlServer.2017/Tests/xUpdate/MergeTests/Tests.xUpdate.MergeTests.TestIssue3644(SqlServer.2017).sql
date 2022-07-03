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
	('b57d053e-8b54-4df9-a716-06072271894b',DATETIME2FROMPARTS(2022, 7, 3, 10, 54, 46, 0, 0))
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

