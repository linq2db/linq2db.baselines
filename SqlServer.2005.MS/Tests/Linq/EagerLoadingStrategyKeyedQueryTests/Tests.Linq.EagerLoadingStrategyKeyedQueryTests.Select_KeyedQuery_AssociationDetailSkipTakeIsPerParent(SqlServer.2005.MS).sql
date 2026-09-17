-- SqlServer.2005.MS SqlServer.2005
SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

-- SqlServer.2005.MS SqlServer.2005
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
			SELECT
				[t1].[Id],
				[t1].[Name]
			FROM
				(
					SELECT
						[d].[Id],
						[d].[Name],
						ROW_NUMBER() OVER (ORDER BY [d].[Id]) as [RN]
					FROM
						[Department] [d]
					WHERE
						[k_1].[item] = [d].[CompanyId]
				) [t1]
			WHERE
				[t1].[RN] > 1 AND [t1].[RN] <= 3
		) [d_1]

