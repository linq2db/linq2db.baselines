-- SqlServer.2012
SELECT
	[m_1].[ParentID],
	[d].[ParentID]
FROM
	[Parent] [m_1]
		INNER JOIN [NoSuchTable] [d] ON [m_1].[ParentID] = [d].[ParentID]

