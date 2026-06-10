SELECT [p].[OrgId], [p].[Code], [p].[Name], [s].[MemberId], [s].[OrgId], [s].[Code], [s].[Id], [s].[Name]
FROM [Projects] AS [p]
LEFT JOIN (
    SELECT [m].[MemberId], [m].[OrgId], [m].[Code], [m0].[Id], [m0].[Name]
    FROM [MmProjectMember] AS [m]
    INNER JOIN [Members] AS [m0] ON [m].[MemberId] = [m0].[Id]
) AS [s] ON [p].[OrgId] = [s].[OrgId] AND [p].[Code] = [s].[Code]
ORDER BY [p].[Code], [p].[OrgId], [s].[MemberId], [s].[OrgId], [s].[Code]




-- SqlServer.2019

SELECT
	[m_1].[OrgId],
	[m_1].[Code],
	[o].[Id],
	[o].[Name]
FROM
	[Projects] [m_1]
		INNER JOIN [MmProjectMember] [d] ON [m_1].[OrgId] = [d].[OrgId] AND [m_1].[Code] = [d].[Code]
		INNER JOIN [Members] [o] ON [o].[Id] = [d].[MemberId]
ORDER BY
	[m_1].[Code]





-- SqlServer.2019

SELECT
	[t1].[OrgId],
	[t1].[Code],
	[t1].[Name]
FROM
	[Projects] [t1]
ORDER BY
	[t1].[Code]



