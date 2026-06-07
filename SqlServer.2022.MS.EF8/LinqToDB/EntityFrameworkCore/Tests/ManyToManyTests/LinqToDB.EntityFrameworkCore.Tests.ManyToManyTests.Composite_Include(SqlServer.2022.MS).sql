SELECT [p].[OrgId], [p].[Code], [p].[Name], [t].[MemberId], [t].[OrgId], [t].[Code], [t].[Id], [t].[Name]
FROM [Projects] AS [p]
LEFT JOIN (
    SELECT [m].[MemberId], [m].[OrgId], [m].[Code], [m0].[Id], [m0].[Name]
    FROM [MmProjectMember] AS [m]
    INNER JOIN [Members] AS [m0] ON [m].[MemberId] = [m0].[Id]
) AS [t] ON [p].[OrgId] = [t].[OrgId] AND [p].[Code] = [t].[Code]
ORDER BY [p].[Code], [p].[OrgId], [t].[MemberId], [t].[OrgId], [t].[Code]




-- SqlServer.2022

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





-- SqlServer.2022

SELECT
	[t1].[OrgId],
	[t1].[Code],
	[t1].[Name]
FROM
	[Projects] [t1]
ORDER BY
	[t1].[Code]



