-- SqlServer.2022
SELECT
	IIF([x].[Name] = N'one', NULL, [x].[ParentKey])
FROM
	[Profiles] [x]
ORDER BY
	[x].[Id]



