-- Access.Jet.OleDb AccessOleDb
SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1]
FROM
	[Parent] [m_1]
		INNER JOIN [NoSuchTable5891] [d] ON ([m_1].[ParentID] = [d].[ParentID])

