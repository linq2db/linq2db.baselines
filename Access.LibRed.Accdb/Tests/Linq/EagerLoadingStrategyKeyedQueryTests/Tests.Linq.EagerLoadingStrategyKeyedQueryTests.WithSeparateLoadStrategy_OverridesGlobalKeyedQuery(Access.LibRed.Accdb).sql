-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Id] as [Id_2],
	[d_1].[DepartmentId],
	[d_1].[Name],
	[d_1].[Salary]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[c_1].[Id] as [Id_1]
		FROM
			[Company] [c_1]
				INNER JOIN [Department] [d] ON ([d].[CompanyId] = [c_1].[Id])
	) [m_1]
		INNER JOIN [Employee] [d_1] ON ([d_1].[DepartmentId] = [m_1].[Id])
ORDER BY
	[d_1].[Id],
	[m_1].[Id],
	[m_1].[Id_1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[Name]
FROM
	[Company] [m_1]
		INNER JOIN [Department] [d] ON ([d].[CompanyId] = [m_1].[Id])
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

