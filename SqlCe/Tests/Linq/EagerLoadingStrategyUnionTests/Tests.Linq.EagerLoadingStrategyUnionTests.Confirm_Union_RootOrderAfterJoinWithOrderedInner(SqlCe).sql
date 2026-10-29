-- SqlCe
SELECT
	[c_1].[Name],
	[d].[Id]
FROM
	[Company] [c_1]
		INNER JOIN [Department] [d] ON [c_1].[Id] = [d].[CompanyId]
ORDER BY
	[c_1].[Name],
	[d].[Id] DESC

-- SqlCe
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[DepartmentId],
	[d].[Name],
	[d].[Salary]
FROM
	(
		SELECT 101 AS [item]
		UNION ALL
		SELECT 102 AS [item]
		UNION ALL
		SELECT 103 AS [item]
		UNION ALL
		SELECT 201 AS [item]
		UNION ALL
		SELECT 202 AS [item]
		UNION ALL
		SELECT 203 AS [item]
		UNION ALL
		SELECT 204 AS [item]
		UNION ALL
		SELECT 301 AS [item]
		UNION ALL
		SELECT 302 AS [item]
		UNION ALL
		SELECT 303 AS [item]
		UNION ALL
		SELECT 304 AS [item]
		UNION ALL
		SELECT 305 AS [item]) [k_1]
		INNER JOIN [Employee] [d] ON [d].[DepartmentId] = [k_1].[item]

