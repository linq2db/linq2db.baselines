-- Sybase.Managed Sybase

SELECT TOP 1
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
		SELECT 101 AS [item]) [k_1]
		INNER JOIN [Employee] [d] ON [d].[DepartmentId] = [k_1].[item]
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
		SELECT 101 AS [item]) [k_1]
		INNER JOIN [Contractor] [d] ON [d].[DepartmentId] = [k_1].[item]
ORDER BY
	[d].[Id]

