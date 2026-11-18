-- SqlServer.2016.MS SqlServer.2016
SELECT
	[m_1].[Id],
	[d_1].[Id],
	[d_1].[CompanyId],
	[d_1].[Name],
	[d_1].[IsActive]
FROM
	[Company] [m_1]
		CROSS APPLY (
			SELECT TOP (2)
				[d].[Id],
				[d].[CompanyId],
				[d].[Name],
				[d].[IsActive]
			FROM
				[Department] [d]
			WHERE
				[d].[CompanyId] = [m_1].[Id]
			ORDER BY
				[d].[Id]
		) [d_1]
ORDER BY
	[m_1].[Id]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

