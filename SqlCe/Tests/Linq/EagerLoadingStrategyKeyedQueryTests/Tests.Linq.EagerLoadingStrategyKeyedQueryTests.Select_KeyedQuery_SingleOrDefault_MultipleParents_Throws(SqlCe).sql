-- SqlCe

SELECT TOP (2)
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]

-- SqlCe

SELECT
	[k_1].[item] as [item_1],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

