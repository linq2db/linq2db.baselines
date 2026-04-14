-- SqlCe

SELECT
	CAST('Small' AS NVarChar(255)) as [Label],
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
UNION ALL
SELECT
	CAST('Large' AS NVarChar(255)) as [Label],
	[c_2].[Id],
	[c_2].[Name]
FROM
	[Company] [c_2]

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
		INNER JOIN [Department] [d] ON [k_1].[item] = [d].[CompanyId]
ORDER BY
	[d].[Id]

