-- SqlServer.2014.MS SqlServer.2014
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN (N'Jo\' + N'
hn')

