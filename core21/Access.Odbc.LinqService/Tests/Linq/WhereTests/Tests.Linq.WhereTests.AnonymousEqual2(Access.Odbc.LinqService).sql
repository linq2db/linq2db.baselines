BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 2
DECLARE @ChildID_1 Int -- Int32
SET     @ChildID_1 = 21

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	([ch].[ParentID] <> ? OR [ch].[ChildID] <> ?) AND [ch].[ParentID] > 0

