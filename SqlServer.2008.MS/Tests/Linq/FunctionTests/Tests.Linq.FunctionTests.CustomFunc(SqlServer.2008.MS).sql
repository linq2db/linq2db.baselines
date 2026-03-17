-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[LastName] + N', ' + [p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[LastName] + N', ' + [p].[FirstName] = N'Pupkin, John'

