-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[ParentId],
	[d].[Name]
FROM
	[NullableParent] [m_1]
		INNER JOIN [NullableChild] [d] ON ([d].[ParentId] = [m_1].[Id])
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p].[Id],
	[p].[Name]
FROM
	[NullableParent] [p]
ORDER BY
	[p].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[ParentId],
	[d].[Name]
FROM
	[NullableParent] [m_1]
		INNER JOIN [NullableChild] [d] ON ([d].[ParentId] = [m_1].[Id])
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p].[Id],
	[p].[Name]
FROM
	[NullableParent] [p]
ORDER BY
	[p].[Id]

