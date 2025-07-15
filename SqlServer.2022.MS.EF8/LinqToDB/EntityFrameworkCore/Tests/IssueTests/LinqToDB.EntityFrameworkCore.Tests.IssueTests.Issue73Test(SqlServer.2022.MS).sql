SELECT COALESCE([i0].[Name], N'') + N'>' + [i].[Name]
FROM [Issue73Entities] AS [i]
LEFT JOIN [Issue73Entities] AS [i0] ON [i].[ParentId] = [i0].[Id]
WHERE [i].[Name] = N'Name1_3'


-- SqlServer.2022

SELECT
	[a_Parent].[Name] + N'>' + [x].[Name]
FROM
	[Issue73Entities] [x]
		LEFT JOIN [Issue73Entities] [a_Parent] ON [x].[ParentId] = [a_Parent].[Id]
WHERE
	[x].[Name] = N'Name1_3'



