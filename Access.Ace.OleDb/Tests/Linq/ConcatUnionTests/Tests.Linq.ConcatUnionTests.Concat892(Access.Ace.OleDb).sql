-- Access.Ace.OleDb AccessOleDb

SELECT
	[c_1].[ParentID],
	[c_1].[ParentID]
FROM
	[Child] [c_1]
UNION
SELECT
	IIF(False, 0, NULL),
	[c_2].[ParentID]
FROM
	[Parent] [c_2]
UNION ALL
SELECT
	[c_3].[ParentID],
	[c_3].[ParentID]
FROM
	[Child] [c_3]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

