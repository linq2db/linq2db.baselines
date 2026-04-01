-- SqlServer.2017.MS SqlServer.2017

SELECT
	[m_1].[Id],
	[m_1].[Name],
	[d].[Id],
	[m_1].[Name] + N' / ' + [d].[Name]
FROM
	[Company] [m_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [m_1].[Id]
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

