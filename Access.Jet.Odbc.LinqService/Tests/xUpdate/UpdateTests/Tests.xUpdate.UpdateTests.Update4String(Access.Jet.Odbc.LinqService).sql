BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[Child] [c_1]
		INNER JOIN [Parent] [a_Parent] ON ([c_1].[ParentID] = [a_Parent].[ParentID])
SET
	[c_1].[ChildID] = [c_1].[ChildID] + 1
WHERE
	[c_1].[ChildID] = ? AND [a_Parent].[Value1] = 1

