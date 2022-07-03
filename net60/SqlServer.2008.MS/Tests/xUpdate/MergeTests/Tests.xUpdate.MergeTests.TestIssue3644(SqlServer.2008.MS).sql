BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#Issue3644Table]
(
	[Id]   UniqueIdentifier NOT NULL,
	[Date] DateTime2(0)         NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

MERGE INTO [tempdb]..[#Issue3644Table] [Target]
USING (VALUES
	('b231e61f-0aa0-4d09-b7a1-241dcb35bd6c',CAST('2022-07-03T11:13:31' AS DATETIME2(0)))
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
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#Issue3644Table]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#Issue3644Table]

