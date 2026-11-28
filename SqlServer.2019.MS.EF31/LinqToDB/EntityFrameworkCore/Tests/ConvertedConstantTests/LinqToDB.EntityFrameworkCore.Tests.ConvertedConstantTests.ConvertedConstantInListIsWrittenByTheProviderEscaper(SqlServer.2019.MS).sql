-- SqlServer.2019
SELECT
	[x].[Name]
FROM
	[Profiles] [x]
WHERE
	[x].[TenantId] = 1 AND N'http://x/?q=\'' OR 1=1 -- x' IN ([x].[Homepage], [x].[Blog])



