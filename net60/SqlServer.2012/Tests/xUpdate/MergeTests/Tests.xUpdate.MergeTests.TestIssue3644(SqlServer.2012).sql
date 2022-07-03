BeforeExecute
-- SqlServer.2012

CREATE TABLE [tempdb]..[#Issue3644Table]
(
	[Id]   UniqueIdentifier NOT NULL,
	[Date] DateTime2(0)         NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2012

MERGE INTO [tempdb]..[#Issue3644Table] [Target]
USING (VALUES
	('86db4e47-6f65-4a46-8513-50700fc708db',DATETIME2FROMPARTS(2022, 7, 3, 11, 8, 34, 0, 0))
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
-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#Issue3644Table]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#Issue3644Table]

