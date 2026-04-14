-- SqlCe

SELECT
	[d].[Id],
	[d].[CompanyId],
	[d].[Name]
FROM
	[Department] [d]
ORDER BY
	[d].[Id]

-- SqlCe

SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[d].[Id],
	[d].[DepartmentId],
	[d].[Name],
	[d].[Salary]
FROM
	(
		SELECT 101 AS [Item1], 1 AS [Item2]
		UNION ALL
		SELECT 102 AS [Item1], 1 AS [Item2]
		UNION ALL
		SELECT 103 AS [Item1], 1 AS [Item2]
		UNION ALL
		SELECT 201 AS [Item1], 2 AS [Item2]
		UNION ALL
		SELECT 202 AS [Item1], 2 AS [Item2]
		UNION ALL
		SELECT 203 AS [Item1], 2 AS [Item2]
		UNION ALL
		SELECT 204 AS [Item1], 2 AS [Item2]
		UNION ALL
		SELECT 301 AS [Item1], 3 AS [Item2]
		UNION ALL
		SELECT 302 AS [Item1], 3 AS [Item2]
		UNION ALL
		SELECT 303 AS [Item1], 3 AS [Item2]
		UNION ALL
		SELECT 304 AS [Item1], 3 AS [Item2]
		UNION ALL
		SELECT 305 AS [Item1], 3 AS [Item2]) [k_1]
		INNER JOIN [Employee] [d] ON [d].[DepartmentId] = [k_1].[Item1] OR [d].[DepartmentId] = [k_1].[Item2]
ORDER BY
	[d].[Id]

