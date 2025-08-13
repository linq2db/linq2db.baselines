BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @param Int -- Int32
SET     @param = 1

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[Value1] = ?

