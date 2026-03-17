-- SqlServer.2016

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] + N' 12') = N'John 12'

