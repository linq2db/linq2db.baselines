BeforeExecute
-- Access.Odbc AccessODBC

SELECT DISTINCT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], [p].[ParentID] MOD 2),
	[p].[Value1]
FROM
	[Parent] [p]

