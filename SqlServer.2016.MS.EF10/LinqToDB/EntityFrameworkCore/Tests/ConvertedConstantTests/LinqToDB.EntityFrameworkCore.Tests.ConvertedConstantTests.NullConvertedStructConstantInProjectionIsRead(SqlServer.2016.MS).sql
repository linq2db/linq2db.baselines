-- SqlServer.2016
SELECT
	IIF([x].[Name] = N'one', NULL, [x].[ParentKey])
FROM
	[Profiles] [x]
ORDER BY
	[x].[Id]



