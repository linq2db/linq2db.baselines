-- SqlCe
SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

-- SqlCe
SELECT
	[k_1].[item],
	[d_1].[Id],
	[d_1].[Name]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2 AS [item]
		UNION ALL
		SELECT 3 AS [item]) [k_1]
		CROSS APPLY (
			SELECT
				[d].[Id],
				[d].[Name]
			FROM
				[Department] [d]
			WHERE
				[k_1].[item] = [d].[CompanyId]
			ORDER BY
				[d].[Id]
			OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 
		) [d_1]

