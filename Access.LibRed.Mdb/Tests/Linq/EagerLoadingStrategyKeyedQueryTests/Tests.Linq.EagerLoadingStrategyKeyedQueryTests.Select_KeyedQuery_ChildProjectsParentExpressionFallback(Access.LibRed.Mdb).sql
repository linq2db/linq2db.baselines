-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[m_1].[Id],
	[m_1].[Name],
	[d].[Id] as [Id_1],
	CASE
		WHEN [m_1].[Name] IS NULL THEN ''
		ELSE [m_1].[Name]
	END + ' / ' + CASE
		WHEN [d].[Name] IS NULL THEN ''
		ELSE [d].[Name]
	END as [Label]
FROM
	[Company] [m_1]
		INNER JOIN [Department] [d] ON ([d].[CompanyId] = [m_1].[Id])
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

