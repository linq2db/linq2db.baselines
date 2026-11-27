-- SqlServer.2017
SELECT
	[x].[Name]
FROM
	[Profiles] [x]
WHERE
	[x].[ParentKey] IS NULL



-- SqlServer.2017
SELECT
	[x].[Name]
FROM
	[Profiles] [x]
WHERE
	[x].[ParentKey] IS NOT NULL
ORDER BY
	[x].[Name]



