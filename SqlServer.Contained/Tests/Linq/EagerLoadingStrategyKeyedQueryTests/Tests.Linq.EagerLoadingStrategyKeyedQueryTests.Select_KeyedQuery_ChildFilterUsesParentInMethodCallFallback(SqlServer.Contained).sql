-- SqlServer.Contained SqlServer.2019

SELECT
	[m_1].[Id],
	[m_1].[Name],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	[Company] [m_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [m_1].[Id] AND [d].[Name] LIKE Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace([m_1].[Name], N'~', N'~~'), N'%', N'~%'), N'_', N'~_'), N'?', N'~?'), N'*', N'~*'), N'#', N'~#'), N'[', N'~['), N']', N'~]') + N'%' ESCAPE N'~'
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- SqlServer.Contained SqlServer.2019

SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

