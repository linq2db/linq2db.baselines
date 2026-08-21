-- SqlServer.2008.MS SqlServer.2008
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId]
FROM
	[EagerExceptionParent] [m_1]
		INNER JOIN [EagerExceptionChild] [d] ON [m_1].[Id] = [d].[ParentId]

