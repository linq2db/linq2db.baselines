-- SqlServer.2025
SELECT
	[x].[Name]
FROM
	[Profiles] [x]
WHERE
	[x].[TenantId] = 1 AND N'http://x/?q=\'' OR 1=1 -- x' IN ([x].[Homepage], [x].[Blog])



