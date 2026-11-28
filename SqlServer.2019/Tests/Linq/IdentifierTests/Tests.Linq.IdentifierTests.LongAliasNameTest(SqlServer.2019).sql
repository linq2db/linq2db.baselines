-- SqlServer.2019
DECLARE @parentId Int -- Int32
SET     @parentId = 1

SELECT
	[longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent].[ParentID],
	[longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent].[Value1]
FROM
	[Parent] [longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent]
		INNER JOIN [Child] [longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestChild] ON [longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestChild].[ParentID] = [longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent].[ParentID]
WHERE
	[longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent].[ParentID] = @parentId

-- SqlServer.2019
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2019
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

