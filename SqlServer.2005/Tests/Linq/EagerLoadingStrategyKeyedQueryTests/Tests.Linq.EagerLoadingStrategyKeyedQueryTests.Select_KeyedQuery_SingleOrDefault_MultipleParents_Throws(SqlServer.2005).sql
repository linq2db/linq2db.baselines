-- SqlServer.2005

SELECT TOP (2)
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]

-- SqlServer.2005

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
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

