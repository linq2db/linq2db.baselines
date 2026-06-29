-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (2)
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] = 1

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(VALUES
		(1)
	) [k_1]([item])
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

