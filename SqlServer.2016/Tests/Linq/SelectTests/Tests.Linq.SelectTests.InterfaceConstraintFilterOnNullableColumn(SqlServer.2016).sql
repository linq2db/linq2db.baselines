-- SqlServer.2016
DECLARE @parentId Int -- Int32
SET     @parentId = 12

SELECT
	[i].[Id],
	[i].[Name],
	[i].[ParentId]
FROM
	[ParentIdNullableTable] [i]
WHERE
	[i].[ParentId] = @parentId

