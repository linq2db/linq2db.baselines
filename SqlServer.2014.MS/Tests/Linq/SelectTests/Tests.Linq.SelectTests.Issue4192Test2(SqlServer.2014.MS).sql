-- SqlServer.2014.MS SqlServer.2014
DECLARE @parentId Int -- Int32
SET     @parentId = 12

SELECT
	[i].[Id],
	[i].[Name],
	[i].[ParentId]
FROM
	[Issue4192TableNullable] [i]
WHERE
	[i].[ParentId] = @parentId

