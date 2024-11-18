﻿--  SqlServer.2008 (asynchronously)

SELECT
	[x].[Id],
	[x].[IsActive],
	[x].[ParentId],
	[x].[Name]
FROM
	[Children] [x]
WHERE
	[x].[Name] LIKE N'%Test%' ESCAPE N'~'
ORDER BY
	[x].[Name]



SELECT [c].[Id], [c].[IsActive], [c].[Name], [c].[ParentId]
FROM [Children] AS [c]
WHERE [c].[Name] LIKE N'Test%'


