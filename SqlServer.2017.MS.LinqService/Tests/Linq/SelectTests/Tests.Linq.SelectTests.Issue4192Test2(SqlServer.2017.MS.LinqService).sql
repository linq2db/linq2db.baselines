BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Issue4192TableNullable]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Issue4192TableNullable]', N'U') IS NULL)
	CREATE TABLE [Issue4192TableNullable]
	(
		[Name]     NVarChar(4000)     NULL,
		[ParentId] Int                NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @parentId Int -- Int32
SET     @parentId = 12

SELECT
	[i].[Name],
	[i].[ParentId]
FROM
	[Issue4192TableNullable] [i]
WHERE
	[i].[ParentId] = @parentId AND [i].[ParentId] IS NOT NULL

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Issue4192TableNullable]

