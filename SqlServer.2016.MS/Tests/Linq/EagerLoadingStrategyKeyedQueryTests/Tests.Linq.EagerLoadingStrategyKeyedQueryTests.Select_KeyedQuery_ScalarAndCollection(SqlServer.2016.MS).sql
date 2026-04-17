-- SqlServer.2016.MS SqlServer.2016

SELECT
	[c_1].[Id],
	[c_1].[Name],
	(
		SELECT
			COUNT(*)
		FROM
			[Department] [d]
		WHERE
			[d].[CompanyId] = [c_1].[Id]
	)
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(VALUES
		(1), (2), (3)
	) [k_1]([item])
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

