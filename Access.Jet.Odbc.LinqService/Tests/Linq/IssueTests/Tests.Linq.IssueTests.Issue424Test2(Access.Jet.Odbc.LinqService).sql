BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT TOP 2
	[t2].[ParentID],
	[t2].[Value1]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			[Parent] [t1]
	) [t2]
ORDER BY
	[t2].[ParentID]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

