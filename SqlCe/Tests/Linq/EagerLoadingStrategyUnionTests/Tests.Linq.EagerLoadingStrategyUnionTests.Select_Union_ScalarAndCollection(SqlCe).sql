-- SqlCe

SELECT
	[c_1].[Id],
	[c_1].[Name],
	[t1].[DeptCount]
FROM
	[Company] [c_1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [DeptCount]
			FROM
				[Department] [d]
			WHERE
				[d].[CompanyId] = [c_1].[Id]
		) [t1]
ORDER BY
	[c_1].[Id]

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
		SELECT 2 AS [item]
		UNION ALL
		SELECT 3 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

