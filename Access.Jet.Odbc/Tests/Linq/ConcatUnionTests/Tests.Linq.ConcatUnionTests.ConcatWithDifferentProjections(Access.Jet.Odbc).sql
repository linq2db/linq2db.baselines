BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[p1].[ParentID],
	[p1].[ParentID],
	[p1].[Value1]
FROM
	[Parent] [p1]
UNION ALL
SELECT
	IIF([p2].[Value1] IS NULL, 0, [p2].[Value1]),
	IIF(False, 0, NULL),
	IIF(False, 0, NULL)
FROM
	[Parent] [p2]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

