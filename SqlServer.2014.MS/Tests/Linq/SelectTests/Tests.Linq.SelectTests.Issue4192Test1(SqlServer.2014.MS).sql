BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4192TableNotNullable]', N'U') IS NOT NULL)
	DROP TABLE [Issue4192TableNotNullable]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4192TableNotNullable]', N'U') IS NULL)
	CREATE TABLE [Issue4192TableNotNullable]
	(
		[Name]     NVarChar(4000)     NULL,
		[ParentId] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
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
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4192TableNotNullable]', N'U') IS NOT NULL)
	DROP TABLE [Issue4192TableNotNullable]

