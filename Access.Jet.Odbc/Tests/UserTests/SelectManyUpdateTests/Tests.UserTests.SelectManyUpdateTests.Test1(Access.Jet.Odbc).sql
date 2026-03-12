-- Access.Jet.Odbc AccessODBC
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

UPDATE
	[Parent] [a_Values],
	[Parent] [x]
SET
	[a_Values].[Value1] = ?
WHERE
	[x].[ParentID] IN (0, 0) AND [x].[ParentID] = [a_Values].[Value1]

