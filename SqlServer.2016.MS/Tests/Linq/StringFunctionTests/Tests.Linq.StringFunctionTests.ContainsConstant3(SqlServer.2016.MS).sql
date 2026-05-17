-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN (N'oh', N'oh''', N'oh\')

