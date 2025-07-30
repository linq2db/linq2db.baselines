BeforeExecute
-- SqlServer.2012

CREATE TABLE [tempdb]..[#TestMergeTVPTable]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2012
DECLARE @p [dbo].[TestTableType] -- Structured -- Object
SET     @p = 

MERGE INTO [tempdb]..[#TestMergeTVPTable] [Target]
USING (
	SELECT
		[t1].[Id],
		[t1].[Name]
	FROM
		@p [t1]
	WHERE
		[t1].[Id] IS NOT NULL
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
-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[tempdb]..[#TestMergeTVPTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#TestMergeTVPTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TestMergeTVPTable]

