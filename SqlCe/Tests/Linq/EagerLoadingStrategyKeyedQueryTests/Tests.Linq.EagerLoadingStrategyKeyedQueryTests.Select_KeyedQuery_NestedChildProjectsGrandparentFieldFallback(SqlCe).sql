-- SqlCe

SELECT
	[m_1].[Id],
	[m_1].[Name],
	[d].[Id] as [Id_1]
FROM
	[Company] [m_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [m_1].[Id]
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- SqlCe

SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[k_1].[Item3],
	[d].[Id],
	[d].[Name]
FROM
	(
		SELECT 101 AS [Item1], 'Company1' AS [Item2], 1 AS [Item3]
		UNION ALL
		SELECT 102 AS [Item1], 'Company1' AS [Item2], 1 AS [Item3]
		UNION ALL
		SELECT 103 AS [Item1], 'Company1' AS [Item2], 1 AS [Item3]
		UNION ALL
		SELECT 201 AS [Item1], 'Company2' AS [Item2], 2 AS [Item3]
		UNION ALL
		SELECT 202 AS [Item1], 'Company2' AS [Item2], 2 AS [Item3]
		UNION ALL
		SELECT 203 AS [Item1], 'Company2' AS [Item2], 2 AS [Item3]
		UNION ALL
		SELECT 204 AS [Item1], 'Company2' AS [Item2], 2 AS [Item3]
		UNION ALL
		SELECT 301 AS [Item1], 'Company3' AS [Item2], 3 AS [Item3]
		UNION ALL
		SELECT 302 AS [Item1], 'Company3' AS [Item2], 3 AS [Item3]
		UNION ALL
		SELECT 303 AS [Item1], 'Company3' AS [Item2], 3 AS [Item3]
		UNION ALL
		SELECT 304 AS [Item1], 'Company3' AS [Item2], 3 AS [Item3]
		UNION ALL
		SELECT 305 AS [Item1], 'Company3' AS [Item2], 3 AS [Item3]) [k_1]
		INNER JOIN [Employee] [d] ON [d].[DepartmentId] = [k_1].[Item1]
ORDER BY
	[d].[Id]

-- SqlCe

SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

