SELECT (COALESCE([i0].[Name], N'') + N'>') + [i].[Name]
FROM [Issue73Entities] AS [i]
LEFT JOIN [Issue73Entities] AS [i0] ON [i].[ParentId] = [i0].[Id]
WHERE [i].[Name] = N'Name1_3'


