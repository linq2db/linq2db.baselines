-- Access.Ace.Odbc AccessODBC

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] IS NOT NULL AND [p].[Value1] <> 1

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

