BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	COUNT(*) > 2

