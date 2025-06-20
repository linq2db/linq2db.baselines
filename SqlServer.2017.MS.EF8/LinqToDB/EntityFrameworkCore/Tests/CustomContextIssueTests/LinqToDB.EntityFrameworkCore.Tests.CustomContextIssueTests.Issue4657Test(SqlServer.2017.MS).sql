-- SqlServer.2017

CREATE TABLE [tempdb]..[#Issue4657TempTable1]
(
	[Id]   Int NOT NULL,
	[Code] Int NOT NULL
)



INSERT BULK [tempdb]..[#Issue4657TempTable1](Id, Code)



-- SqlServer.2017

CREATE TABLE [tempdb]..[#Issue4657TempTable2]
(
	[Id]   Int NOT NULL,
	[Code] Int NOT NULL
)



INSERT BULK [tempdb]..[#Issue4657TempTable2](Id, Code)



-- SqlServer.2017

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
		[t2].[Id] as [source_Id],
		[t2].[Code] as [source_Code]
	FROM
		[tempdb]..[#Issue4657TempTable1] [t2]
) [Source]
(
	[source_Id],
	[source_Code]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Code]
)
VALUES
(
	[Source].[source_Code]
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



-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#Issue4657TempTable2]



-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#Issue4657TempTable1]



