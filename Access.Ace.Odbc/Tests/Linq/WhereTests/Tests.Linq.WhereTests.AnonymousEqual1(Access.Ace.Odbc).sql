-- Access.Ace.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 21

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	[ch].[ParentID] = ? AND [ch].[ChildID] = ?

