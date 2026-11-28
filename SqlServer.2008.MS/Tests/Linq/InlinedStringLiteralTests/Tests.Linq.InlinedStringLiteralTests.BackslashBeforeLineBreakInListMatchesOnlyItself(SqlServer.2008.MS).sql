-- SqlServer.2008.MS SqlServer.2008
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN (N'Jo\' + N'
hn')

