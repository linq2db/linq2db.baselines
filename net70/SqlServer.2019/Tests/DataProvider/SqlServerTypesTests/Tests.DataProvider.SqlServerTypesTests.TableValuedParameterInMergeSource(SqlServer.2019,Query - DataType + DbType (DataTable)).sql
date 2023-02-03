BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#TestMergeTVPTable]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = 

MERGE INTO [tempdb]..[#TestMergeTVPTable] [Target]
USING
(
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
-- SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[tempdb]..[#TestMergeTVPTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#TestMergeTVPTable]

