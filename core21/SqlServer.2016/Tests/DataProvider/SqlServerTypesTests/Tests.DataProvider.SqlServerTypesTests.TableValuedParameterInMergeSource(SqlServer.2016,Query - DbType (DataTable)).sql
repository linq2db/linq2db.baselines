﻿BeforeExecute
-- SqlServer.2016

CREATE TABLE [#TestMergeTVPTable]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2016
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = 

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
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[#TestMergeTVPTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [#TestMergeTVPTable]

