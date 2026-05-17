-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[Id],
	Coalesce((
		SELECT
			STRING_AGG(Coalesce([a_Children].[Value], N''), N'') WITHIN GROUP (ORDER BY [a_Children].[Id])
		FROM
			[ConcatChild] [a_Children]
		WHERE
			[p].[Id] = [a_Children].[ParentId]
	), N'')
FROM
	[ConcatParent] [p]
ORDER BY
	[p].[Id]

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId],
	[d].[Value]
FROM
	[ConcatParent] [m_1]
		INNER JOIN [ConcatChild] [d] ON [m_1].[Id] = [d].[ParentId]

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[ConcatParent] [t1]

