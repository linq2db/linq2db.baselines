-- SqlServer.2005
SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
SELECT
	[k_1].[item],
	[d_1].[Id],
	[d_1].[Name]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		CROSS APPLY (
			SELECT TOP (2)
				[d].[Id],
				[d].[Name]
			FROM
				[Department] [d]
			WHERE
				[k_1].[item] = [d].[CompanyId]
			ORDER BY
				[d].[Id]
		) [d_1]

