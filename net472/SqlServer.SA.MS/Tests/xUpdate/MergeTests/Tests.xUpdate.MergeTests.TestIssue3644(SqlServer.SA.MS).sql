BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#Issue3644Table]
(
	[Id]   UniqueIdentifier NOT NULL,
	[Date] DateTime2(0)         NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

MERGE INTO [tempdb]..[#Issue3644Table] [Target]
USING (VALUES
	('57ed9908-9136-4ffe-a13b-4dafa4e15d67',DATETIME2FROMPARTS(2022, 7, 3, 11, 26, 53, 0, 0))
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
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#Issue3644Table]

