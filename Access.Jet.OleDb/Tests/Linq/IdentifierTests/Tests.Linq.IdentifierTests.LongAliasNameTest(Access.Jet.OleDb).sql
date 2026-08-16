-- Access.Jet.OleDb AccessOleDb
DECLARE @parentId Integer -- Int32
SET     @parentId = 1

SELECT
	[longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam_1].[ParentID],
	[longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam_1].[Value1]
FROM
	[Parent] [longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam_1]
		INNER JOIN [Child] [longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam] ON ([longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam].[ParentID] = [longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam_1].[ParentID])
WHERE
	[longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam_1].[ParentID] = @parentId

