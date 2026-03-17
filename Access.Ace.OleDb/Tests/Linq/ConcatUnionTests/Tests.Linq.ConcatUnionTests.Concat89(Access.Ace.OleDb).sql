-- Access.Ace.OleDb AccessOleDb

SELECT
	[c_1].[ParentID],
	[c_1].[ParentID]
FROM
	[Child] [c_1]
UNION ALL
SELECT
	IIF(False, 0, NULL),
	[c_2].[ParentID]
FROM
	[Parent] [c_2]

