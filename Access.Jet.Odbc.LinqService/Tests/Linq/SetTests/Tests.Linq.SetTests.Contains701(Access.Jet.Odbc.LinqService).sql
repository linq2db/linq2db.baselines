BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID  -- Int32
SET     @ParentID = 11
DECLARE @Value1  -- Int32
SET     @Value1 = 11

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Child] [param]
		LEFT JOIN [Parent] [a_Parent] ON ([param].[ParentID] = [a_Parent].[ParentID])
WHERE
	[a_Parent].[ParentID] = ? AND [a_Parent].[Value1] = ?

