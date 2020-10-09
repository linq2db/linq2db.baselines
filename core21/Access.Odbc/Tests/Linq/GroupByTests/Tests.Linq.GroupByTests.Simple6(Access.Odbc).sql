BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[t1].[ParentID], 
	[t1].[ChildID]
FROM
	[GrandChild] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @ChildID Int -- Int32
SET     @ChildID = 11

SELECT 
	[ch].[GrandChildID]
FROM
	[GrandChild] [ch]
WHERE
	([ch].[ParentID] = ? AND [ch].[ChildID] = ?)

