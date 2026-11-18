-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[m_1].[Id],
	[m_1].[Name],
	[d].[Id] as [Id_1],
	[d].[CompanyId],
	[d].[Name] as [Name_1],
	[d].[IsActive]
FROM
	[Company] [m_1]
		INNER JOIN [Department] [d] ON ([d].[CompanyId] = [m_1].[Id] AND [d].[Name] LIKE (Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace([m_1].[Name], '[', '[[]'), '_', '[_]'), '?', '[?]'), '*', '[*]'), '%', '[%]'), '#', '[#]'), '-', '[-]'), '!', '[!]') + '%'))
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

