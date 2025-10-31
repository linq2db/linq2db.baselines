BeginTransaction(RepeatableRead)


-- SqlServer.2022

SELECT
	[m_1].[Id],
	[d_1].[Key_1],
	[d_1].[SUM_1],
	[d_1].[ToValue]
FROM
	[Parents] [m_1]
		CROSS APPLY (
			SELECT
				[d].[ParentId] as [Key_1],
				SUM([d].[Id]) as [SUM_1],
				STRING_AGG([d].[Name], N', ') as [ToValue]
			FROM
				[Children] [d]
			WHERE
				[m_1].[Id] = [d].[ParentId]
			GROUP BY
				[d].[ParentId]
		) [d_1]



DisposeTransaction


-- SqlServer.2022

SELECT
	[c_1].[Id]
FROM
	[Parents] [c_1]



