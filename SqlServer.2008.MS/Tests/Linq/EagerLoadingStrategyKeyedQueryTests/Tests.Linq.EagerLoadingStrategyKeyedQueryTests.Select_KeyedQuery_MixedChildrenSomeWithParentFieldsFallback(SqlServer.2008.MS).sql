-- SqlServer.2008.MS SqlServer.2008

SELECT
	[m_1].[Id],
	[m_1].[Name],
	[d].[Id]
FROM
	[Company] [m_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [m_1].[Id]
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[d_sel].[CompanyId],
	[d_sel].[Id],
	[d_sel].[Name],
	[d_sel].[IsActive]
FROM
	[Department] [d_sel]
WHERE
	[d_sel].[CompanyId] IN (1, 2, 3)
ORDER BY
	[d_sel].[Id]

