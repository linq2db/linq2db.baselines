-- Access.Ace.Odbc AccessODBC

SELECT TOP 3
	[t1].[Value1]
FROM
	(
		SELECT DISTINCT
			[p].[Value1]
		FROM
			[Parent] [p]
	) [t1]
ORDER BY
	IIF([t1].[Value1] IS NULL, 1, 0),
	[t1].[Value1] DESC

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

