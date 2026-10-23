-- SqlServer.2005
SELECT
	[m_1].[ParentID],
	[d].[ParentID]
FROM
	[Parent] [m_1]
		INNER JOIN [NoSuchTable5891] [d] ON [m_1].[ParentID] = [d].[ParentID]

