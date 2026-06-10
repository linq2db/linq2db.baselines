SELECT [s].[Id]
FROM [Projects] AS [p]
INNER JOIN (
    SELECT [m0].[Id], [m].[OrgId], [m].[Code]
    FROM [MmProjectMember] AS [m]
    INNER JOIN [Members] AS [m0] ON [m].[MemberId] = [m0].[Id]
) AS [s] ON [p].[OrgId] = [s].[OrgId] AND [p].[Code] = [s].[Code]


-- SqlServer.2025

SELECT
	[o].[Id]
FROM
	[Projects] [m_1]
		INNER JOIN [MmProjectMember] [j] ON [m_1].[OrgId] = [j].[OrgId] AND [m_1].[Code] = [j].[Code]
		INNER JOIN [Members] [o] ON [o].[Id] = [j].[MemberId]



