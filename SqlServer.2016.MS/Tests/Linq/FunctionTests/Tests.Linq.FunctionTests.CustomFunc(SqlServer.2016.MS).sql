-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[LastName] + N', ' + [p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[LastName] + N', ' + [p].[FirstName] = N'Pupkin, John'

