BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue4192TableNotNullable]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue4192TableNotNullable]', N'U') IS NULL)
	CREATE TABLE [Issue4192TableNotNullable]
	(
		[Name]     NVarChar(4000)     NULL,
		[ParentId] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @parentId Int -- Int32
SET     @parentId = 12

SELECT
	[i].[Name],
	[i].[ParentId]
FROM
	[Issue4192TableNotNullable] [i]
WHERE
	[i].[ParentId] = @parentId

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue4192TableNotNullable]

