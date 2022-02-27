BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [#TestMergeTVPTable]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = Tests.DataProvider.SqlServerTypesTests+<GetSqlDataRecords>d__22

MERGE INTO [#TestMergeTVPTable] [Target]
USING (
	SELECT
		[_].[Id],
		[_].[Name]
	FROM
		@table_1 [_]
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
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[#TestMergeTVPTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [#TestMergeTVPTable]

