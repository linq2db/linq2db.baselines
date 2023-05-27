BeforeExecute
-- SqlServer.2008

CREATE TABLE [tempdb]..[#TestMergeTVPTable]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2008
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = Tests.DataProvider.SqlServerTypesTests+<GetSqlDataRecords>d__24

MERGE INTO [tempdb]..[#TestMergeTVPTable] [Target]
USING (
	SELECT
		[_].[Id],
		[_].[Name]
	FROM
		@table [_]
	WHERE
		[_].[Id] IS NOT NULL
) [Source]
(
	[Id],
	[Name]
)
ON ([Target].[Id] = [Source].[Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Name]
)
VALUES
(
	[Source].[Id],
	[Source].[Name]
)
;

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[tempdb]..[#TestMergeTVPTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#TestMergeTVPTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TestMergeTVPTable]

