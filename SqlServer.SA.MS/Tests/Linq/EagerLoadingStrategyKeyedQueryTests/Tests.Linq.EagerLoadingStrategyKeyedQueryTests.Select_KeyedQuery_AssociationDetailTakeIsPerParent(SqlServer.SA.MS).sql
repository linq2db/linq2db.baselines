-- SqlServer.SA.MS SqlServer.2019
SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

-- SqlServer.SA.MS SqlServer.2019
SELECT
	[k_1].[item],
	[d_1].[Id],
	[d_1].[Name]
FROM
	(VALUES
		(1), (2), (3)
	) [k_1]([item])
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

