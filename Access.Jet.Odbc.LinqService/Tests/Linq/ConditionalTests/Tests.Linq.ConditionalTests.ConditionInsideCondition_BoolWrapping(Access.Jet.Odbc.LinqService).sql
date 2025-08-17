BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	IIF([p].[ParentID] MOD 2 = 0, [p].[ParentID] MOD 3 = 0, IIF([p].[ParentID] MOD 4 = 0, [p].[ParentID] > 0, [p].[ParentID] < 5))
FROM
	[Parent] [p]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

