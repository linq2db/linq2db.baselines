-- SqlServer.2019

CREATE TABLE [tempdb]..[#Issue4657TempTable1]
(
	[Id]   Int NOT NULL,
	[Code] Int NOT NULL
)



INSERT BULK [tempdb]..[#Issue4657TempTable1](Id, Code)



-- SqlServer.2019

CREATE TABLE [tempdb]..[#Issue4657TempTable2]
(
	[Id]   Int NOT NULL,
	[Code] Int NOT NULL
)



INSERT BULK [tempdb]..[#Issue4657TempTable2](Id, Code)



-- SqlServer.2019

WITH [CTE_1] ([Id], [Code])
AS
(
	SELECT
		[t1].[ID],
		[t1].[CODE]
	FROM
		[Issue4657Table] [t1]
)
MERGE INTO [CTE_1] [Target]
USING (
	SELECT
		[t2].[Id],
		[t2].[Code]
	FROM
		[tempdb]..[#Issue4657TempTable1] [t2]
) [Source]
(
	[Id],
	[Code]
)
ON ([Target].[Id] = [Source].[Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Code]
)
VALUES
(
	[Source].[Code]
)
OUTPUT
	INSERTED.[Id],
	INSERTED.[Code]
INTO [tempdb]..[#Issue4657TempTable2]
(
	[Id],
	[Code]
)
;



-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#Issue4657TempTable2]



-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#Issue4657TempTable1]



