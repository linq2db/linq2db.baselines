BeforeExecute
-- SqlServer.2014

CREATE TABLE [tempdb]..[#Issue3644Table]
(
	[Id]   UniqueIdentifier NOT NULL,
	[Date] DateTime2(0)         NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2014

MERGE INTO [tempdb]..[#Issue3644Table] [Target]
USING (VALUES
	('05ef19fb-79ba-459c-acaa-ae48a83a66f1',DATETIME2FROMPARTS(2022, 7, 3, 11, 16, 11, 0, 0))
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
-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#Issue3644Table]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#Issue3644Table]

