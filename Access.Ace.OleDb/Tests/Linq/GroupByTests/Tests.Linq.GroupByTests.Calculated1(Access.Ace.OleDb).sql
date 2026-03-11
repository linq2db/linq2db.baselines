-- Access.Ace.OleDb AccessOleDb

SELECT
	[m_1].[Key_1],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			IIF([g_1].[ParentID] > 2, IIF([g_1].[ParentID] > 3, '1', '2'), '3') as [Key_1]
		FROM
			[Child] [g_1]
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[Key_1] = IIF([d].[ParentID] > 2, IIF([d].[ParentID] > 3, '1', '2'), '3'))

-- Access.Ace.OleDb AccessOleDb

SELECT DISTINCT
	IIF([g_1].[ParentID] > 2, IIF([g_1].[ParentID] > 3, '1', '2'), '3')
FROM
	[Child] [g_1]

