-- SqlServer.2017.MS SqlServer.2017
-- Batch 1
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId]
FROM
	[EagerExceptionParent] [m_1]
		INNER JOIN [EagerExceptionChild] [d] ON [m_1].[Id] = [d].[ParentId]

-- Batch 2
SELECT
	[t1].[Id]
FROM
	[EagerExceptionParent] [t1]
