-- SqlServer.2005

SELECT
	[m_1].[Id],
	[m_1].[Name],
	[d].[Id]
FROM
	[Company] [m_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [m_1].[Id]
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[k_1].[Item3],
	[d].[Id],
	[d].[Name]
FROM
	(
		SELECT 101 AS [Item1], N'Company1' AS [Item2], 1 AS [Item3]
		UNION ALL
		SELECT 102, N'Company1', 1
		UNION ALL
		SELECT 103, N'Company1', 1
		UNION ALL
		SELECT 201, N'Company2', 2
		UNION ALL
		SELECT 202, N'Company2', 2
		UNION ALL
		SELECT 203, N'Company2', 2
		UNION ALL
		SELECT 204, N'Company2', 2
		UNION ALL
		SELECT 301, N'Company3', 3
		UNION ALL
		SELECT 302, N'Company3', 3
		UNION ALL
		SELECT 303, N'Company3', 3
		UNION ALL
		SELECT 304, N'Company3', 3
		UNION ALL
		SELECT 305, N'Company3', 3) [k_1]
		INNER JOIN [Employee] [d] ON [d].[DepartmentId] = [k_1].[Item1]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

