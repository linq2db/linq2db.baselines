BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#Issue3644Table]
(
	[Id]   UniqueIdentifier NOT NULL,
	[Date] DateTime2(0)         NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019

MERGE INTO [tempdb]..[#Issue3644Table] [Target]
USING (VALUES
	('1293fbae-1d8d-46d6-826e-30e5a2d6a071',DATETIME2FROMPARTS(2022, 7, 3, 11, 6, 25, 0, 0))
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
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#Issue3644Table]

