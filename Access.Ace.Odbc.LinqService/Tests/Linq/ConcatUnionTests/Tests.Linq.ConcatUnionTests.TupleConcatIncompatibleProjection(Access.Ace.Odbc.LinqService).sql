BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[x].[Value1],
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] > 3
UNION ALL
SELECT
	IIF(False, 0, NULL),
	IIF(False, 0, NULL)
FROM
	[Parent] [p2]
WHERE
	[p2].[ParentID] <= 3

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

