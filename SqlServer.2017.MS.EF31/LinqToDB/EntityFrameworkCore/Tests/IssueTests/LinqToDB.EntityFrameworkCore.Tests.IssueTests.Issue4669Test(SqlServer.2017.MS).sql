SELECT [c].[Id], [c].[IsActive], [c].[Name], [c].[ParentId]
FROM [Children] AS [c]


--  SqlServer.2017 (asynchronously)

SELECT
	[x].[Id],
	[x].[IsActive],
	[x].[ParentId],
	[x].[Name]
FROM
	(VALUES
		(NULL,11,1,1), (NULL,12,0,2)
	) [x]([Name], [Id], [IsActive], [ParentId])
WHERE
	[x].[Name] LIKE N'%Test%' ESCAPE N'~'
ORDER BY
	[x].[Name]



SELECT [c].[Id], [c].[IsActive], [c].[Name], [c].[ParentId]
FROM [Children] AS [c]
WHERE [c].[Name] IS NOT NULL AND ([c].[Name] LIKE N'Test%')


