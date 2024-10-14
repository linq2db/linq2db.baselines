BeforeExecute
-- SqlServer.2014

CREATE TABLE [tempdb]..[#TestMergeTVPTable]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2014
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

MERGE INTO [tempdb]..[#TestMergeTVPTable] [Target]
USING (
	SELECT
		[t1].[Id] as [source_Id],
		[t1].[Name] as [source_Name]
	FROM
		@table [t1]
	WHERE
		[t1].[Id] IS NOT NULL
) [Source]
(
	[source_Id],
	[source_Name]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Name]
)
VALUES
(
	[Source].[source_Id],
	[Source].[source_Name]
)
;

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[tempdb]..[#TestMergeTVPTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#TestMergeTVPTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TestMergeTVPTable]

