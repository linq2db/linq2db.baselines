BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 11
DECLARE @Value1 Int -- Int32
SET     @Value1 = 11

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Child] [param]
		LEFT JOIN [Parent] [a_Parent] ON ([param].[ParentID] = [a_Parent].[ParentID])
WHERE
	[a_Parent].[ParentID] = ? AND
	[a_Parent].[ParentID] IS NOT NULL AND
	[a_Parent].[Value1] = ? AND
	[a_Parent].[Value1] IS NOT NULL

