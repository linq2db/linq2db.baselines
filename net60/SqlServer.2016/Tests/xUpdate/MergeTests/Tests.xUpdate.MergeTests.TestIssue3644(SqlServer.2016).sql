BeforeExecute
-- SqlServer.2016

CREATE TABLE [tempdb]..[#Issue3644Table]
(
	[Id]   UniqueIdentifier NOT NULL,
	[Date] DateTime2(0)         NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2016

MERGE INTO [tempdb]..[#Issue3644Table] [Target]
USING (VALUES
	('08737af1-3906-415c-98a6-debf487af0b0',DATETIME2FROMPARTS(2022, 7, 3, 11, 18, 54, 0, 0))
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
-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#Issue3644Table]

