-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[ParentID] + 1,
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1
UNION ALL
SELECT
	IIF(False, 0, NULL),
	[p_1].[ParentID]
FROM
	[Parent] [p_1]
WHERE
	[p_1].[ParentID] = 2

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

