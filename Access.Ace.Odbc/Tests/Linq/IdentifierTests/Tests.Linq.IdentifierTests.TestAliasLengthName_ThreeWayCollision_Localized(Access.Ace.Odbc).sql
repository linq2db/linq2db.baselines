-- Access.Ace.Odbc AccessODBC
DECLARE @parentId Int -- Int32
SET     @parentId = 1

SELECT
	[long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias_2].[ParentID],
	[long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias_2].[Value1]
FROM
	([Parent] [long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias_2]
		INNER JOIN [Child] [long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias] ON ([long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias].[ParentID] = [long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias_2].[ParentID]))
		INNER JOIN [GrandChild] [long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias_1] ON ([long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias_1].[ChildID] = [long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias].[ChildID])
WHERE
	[long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias_2].[ParentID] = ?

