-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[ParentId],
	[d].[Name]
FROM
	[NullableParent] [m_1]
		INNER JOIN [NullableChild] [d] ON [d].[ParentId] = [m_1].[Id]
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- SqlCe

SELECT
	[p].[Id],
	[p].[Name]
FROM
	[NullableParent] [p]
ORDER BY
	[p].[Id]

-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[ParentId],
	[d].[Name]
FROM
	[NullableParent] [m_1]
		INNER JOIN [NullableChild] [d] ON [d].[ParentId] = [m_1].[Id]
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- SqlCe

SELECT
	[p].[Id],
	[p].[Name]
FROM
	[NullableParent] [p]
ORDER BY
	[p].[Id]

