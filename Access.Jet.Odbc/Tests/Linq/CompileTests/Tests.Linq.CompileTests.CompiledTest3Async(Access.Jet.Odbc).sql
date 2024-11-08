BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

SELECT TOP 1
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @ParentID  -- Int32
SET     @ParentID = 2

SELECT TOP 2
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

