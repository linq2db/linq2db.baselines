

-- SqlServer.2017

SELECT
	[m_1].[Id],
	[d_1].[Key_1],
	[d_1].[Sum_1],
	[d_1].[ConcatStringsNullable]
FROM
	[Parents] [m_1]
		CROSS APPLY (
			SELECT
				[d].[ParentId] as [Key_1],
				SUM([d].[Id]) as [Sum_1],
				STRING_AGG([d].[Name], N', ') as [ConcatStringsNullable]
			FROM
				[Children] [d]
			WHERE
				[m_1].[Id] = [d].[ParentId]
			GROUP BY
				[d].[ParentId]
		) [d_1]





-- SqlServer.2017

SELECT
	[c_1].[Id]
FROM
	[Parents] [c_1]



