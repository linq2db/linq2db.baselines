-- Sybase.Managed Sybase

SELECT
	[d].[Id],
	[d].[Name]
FROM
	[Department] [d]
ORDER BY
	[d].[Id]

-- Sybase.Managed Sybase

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
		SELECT 102
		UNION ALL
		SELECT 103
		UNION ALL
		SELECT 201
		UNION ALL
		SELECT 202
		UNION ALL
		SELECT 203
		UNION ALL
		SELECT 204
		UNION ALL
		SELECT 301
		UNION ALL
		SELECT 302
		UNION ALL
		SELECT 303
		UNION ALL
		SELECT 304
		UNION ALL
		SELECT 305) [k_1]
		INNER JOIN [Employee] [d] ON [d].[DepartmentId] > [k_1].[item]
ORDER BY
	[d].[Id]

-- Sybase.Managed Sybase

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[DepartmentId],
	[d].[Name],
	[d].[Rate]
FROM
	(
		SELECT 101 AS [item]
		UNION ALL
		SELECT 102
		UNION ALL
		SELECT 103
		UNION ALL
		SELECT 201
		UNION ALL
		SELECT 202
		UNION ALL
		SELECT 203
		UNION ALL
		SELECT 204
		UNION ALL
		SELECT 301
		UNION ALL
		SELECT 302
		UNION ALL
		SELECT 303
		UNION ALL
		SELECT 304
		UNION ALL
		SELECT 305) [k_1]
		INNER JOIN [Contractor] [d] ON [d].[DepartmentId] <= [k_1].[item]
ORDER BY
	[d].[Id]

