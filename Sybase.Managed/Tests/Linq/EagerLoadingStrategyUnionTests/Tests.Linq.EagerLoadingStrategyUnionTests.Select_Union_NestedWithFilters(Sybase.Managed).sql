-- Sybase.Managed Sybase

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] >= 2
ORDER BY
	[c_1].[Id]

-- Sybase.Managed Sybase

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[DepartmentId],
	[d].[Name],
	[d].[Salary]
FROM
	[Department] [m_1]
		INNER JOIN [Employee] [d] ON [d].[DepartmentId] = [m_1].[Id]
WHERE
	[m_1].[CompanyId] IN (2, 3) AND [m_1].[IsActive] = 1 AND
	[d].[Salary] > 45000
ORDER BY
	[d].[Salary] DESC,
	[m_1].[Id]

-- Sybase.Managed Sybase

SELECT
	[d].[CompanyId],
	[d].[Id],
	[d].[Name]
FROM
	[Department] [d]
WHERE
	[d].[CompanyId] IN (2, 3) AND [d].[IsActive] = 1
ORDER BY
	[d].[Id]

