-- Access.Ace.Odbc AccessODBC
SELECT
	[p].[ParentID],
	IIF([x].[ParentID] IS NULL, NULL, IIF([x].[Value1] IS NULL, 'none', NULL))
FROM
	[Parent] [p]
		LEFT JOIN [Parent] [x] ON ([x].[ParentID] = [p].[ParentID] + 1)

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT
	[p].[ParentID],
	IIF([x].[ParentID] IS NULL, NULL, IIF([x].[Value1] IS NULL, 'none', NULL))
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[q].[Value1],
				[q].[ParentID]
			FROM
				[Parent] [q]
		) [x] ON ([x].[ParentID] = [p].[ParentID] + 1)

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

