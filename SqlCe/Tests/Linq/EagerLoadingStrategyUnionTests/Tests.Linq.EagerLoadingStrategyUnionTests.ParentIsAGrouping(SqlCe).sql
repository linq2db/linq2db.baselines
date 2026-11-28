-- SqlCe
SELECT
	[g_1].[CompanyId],
	COUNT(*)
FROM
	[Department] [g_1]
GROUP BY
	[g_1].[CompanyId]
ORDER BY
	[g_1].[CompanyId]

-- SqlCe
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2 AS [item]
		UNION ALL
		SELECT 3 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

