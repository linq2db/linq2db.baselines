-- SqlServer.2016
DECLARE @parentId Int -- Int32
SET     @parentId = 1

SELECT
	[long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent].[ParentID],
	[long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent].[Value1]
FROM
	[Parent] [long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent]
		INNER JOIN [Child] [long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestChild] ON [long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestChild].[ParentID] = [long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent].[ParentID]
WHERE
	[long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent].[ParentID] = @parentId

