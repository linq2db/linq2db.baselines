BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 1

SELECT TOP 1
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 2

SELECT TOP 1
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

