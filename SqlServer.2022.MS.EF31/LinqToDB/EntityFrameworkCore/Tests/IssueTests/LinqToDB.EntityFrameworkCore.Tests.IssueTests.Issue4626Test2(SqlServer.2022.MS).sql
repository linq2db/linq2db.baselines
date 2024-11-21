BeginTransaction(RepeatableRead)


--  SqlServer.2008

SELECT
	[m_1].[Id],
	[d_1].[Tag],
	[d_1].[Sum_1],
	[d_1].[Des]
FROM
	[Parents] [m_1]
		CROSS APPLY (
			SELECT
				[d].[ParentId] as [Tag],
				SUM([d].[Id]) as [Sum_1],
				 as [Des]
			FROM
				[Children] [d]
			WHERE
				[m_1].[Id] = [d].[ParentId]
			GROUP BY
				[d].[ParentId]
		) [d_1]



DisposeTransaction


