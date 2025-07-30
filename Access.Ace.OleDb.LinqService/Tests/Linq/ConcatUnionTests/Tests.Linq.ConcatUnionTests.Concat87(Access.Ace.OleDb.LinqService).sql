BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[c_1].[ParentID],
	IIF(False, 0, NULL)
FROM
	[Child] [c_1]
UNION ALL
SELECT
	IIF(False, 0, NULL),
	[c_2].[Value1]
FROM
	[Parent] [c_2]

