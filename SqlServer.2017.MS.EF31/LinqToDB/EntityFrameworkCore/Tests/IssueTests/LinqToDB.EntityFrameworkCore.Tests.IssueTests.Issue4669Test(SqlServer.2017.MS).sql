SELECT [c].[Id], [c].[IsActive], [c].[Name], [c].[ParentId]
FROM [Children] AS [c]
WHERE [c].[Name] IS NOT NULL AND ([c].[Name] LIKE N'Test%')


