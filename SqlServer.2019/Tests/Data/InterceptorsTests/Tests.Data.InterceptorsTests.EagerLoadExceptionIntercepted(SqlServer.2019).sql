-- SqlServer.2019

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId]
FROM
	[EagerExceptionParent] [m_1]
		INNER JOIN [EagerExceptionChild] [d] ON [m_1].[Id] = [d].[ParentId]
;
SELECT
	[t1].[Id]
FROM
	[EagerExceptionParent] [t1]

