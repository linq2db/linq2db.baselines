-- Sybase.Managed Sybase
DECLARE @parentId Integer -- Int32
SET     @parentId = 1

SELECT
	longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent.[ParentID],
	longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent.[Value1]
FROM
	[Parent] longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent
		INNER JOIN [Child] longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestChild ON longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestChild.[ParentID] = longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent.[ParentID]
WHERE
	longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent.[ParentID] = @parentId

