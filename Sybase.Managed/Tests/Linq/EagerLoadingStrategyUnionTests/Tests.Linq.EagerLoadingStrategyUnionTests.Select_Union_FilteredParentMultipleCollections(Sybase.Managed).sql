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
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 2 AS [item]
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
WHERE
	[d].[IsActive] = 1
ORDER BY
	[d].[Id]

-- Sybase.Managed Sybase

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 2 AS [item]
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
WHERE
	[d].[IsActive] = 0
ORDER BY
	[d].[Id]

