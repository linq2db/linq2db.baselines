-- Sybase.Managed Sybase

SELECT
	CAST('First' AS NVarChar(255)),
	[c_1].[Id]
FROM
	[Company] [c_1]
UNION ALL
SELECT
	CAST('Second' AS NVarChar(255)),
	[c_2].[Id]
FROM
	[Company] [c_2]

-- Sybase.Managed Sybase

SELECT
	[d].[CompanyId],
	[d].[Id],
	[d].[Name]
FROM
	[Department] [d]
WHERE
	[d].[CompanyId] IN (1, 2, 3)
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
		INNER JOIN [Employee] [d] ON [k_1].[item] = [d].[DepartmentId]
ORDER BY
	[d].[Id]

